
import SwiftUI
import PhotosUI

protocol ImagePickerDelegate {
    func didSelectImages(_ images: [UIImage])
}

struct ImagePicker: UIViewControllerRepresentable {
    var delegate: ImagePickerDelegate

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> PHPickerViewController {
        var configuration = PHPickerConfiguration()
        configuration.filter = .images
        configuration.selectionLimit = 0 // Set to 0 to allow unlimited selection
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(delegate: delegate)
    }

    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        var delegate: ImagePickerDelegate

        init(delegate: ImagePickerDelegate) {
            self.delegate = delegate
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            var selectedImages: [UIImage] = []

            for result in results {
                if result.itemProvider.canLoadObject(ofClass: UIImage.self) {
                    result.itemProvider.loadObject(ofClass: UIImage.self) { image, error in
                        if let image = image as? UIImage {
                            selectedImages.append(image)
                        }
                    }
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.delegate.didSelectImages(selectedImages)
                picker.dismiss(animated: true, completion: nil)
            }
        }
    }
}

