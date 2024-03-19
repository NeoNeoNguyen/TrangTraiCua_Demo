// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:coreservice/coreservice.dart';
// import 'package:flutter/material.dart';

// class DefaultImageWidget extends StatelessWidget {
//   const DefaultImageWidget({
//     Key? key,
//     required this.imageUrl,
//     this.width,
//     this.height,
//     this.fit = BoxFit.cover,
//     this.color,
//     this.placeholder,
//     this.errorWidget
//   }) : super(key: key);

//   final String? imageUrl;
//   final double? width;
//   final double? height;
//   final BoxFit fit;
//   final Color? color;
//   final PlaceholderWidgetBuilder? placeholder;
//   final LoadingErrorWidgetBuilder? errorWidget;

//   @override
//   Widget build(BuildContext context) {
//     if (TextUtils.isEmpty(imageUrl)) {
//       return SizedBox(
//         width: width,
//         height: height,
//         child: const Center(
//           child: Icon(Icons.image_not_supported),
//         )
//       );
//     }
//     var imageURLFinal = '';
//     if(imageURLFinal.startsWith("http")){
//       imageURLFinal = imageUrl!;
//     }else{
//       imageURLFinal = ENVConfig.instance.baseUrl + imageUrl!;
//     }
//     return CachedNetworkImage(
//         imageUrl: imageURLFinal,
//         width: width,
//         height: height,
//         fit: fit,
//         color: color,
//         placeholder: placeholder ?? (context, url) => const Center(child: CircularProgressIndicator()),
//         errorWidget: errorWidget ?? (context, url, error) => const Icon(Icons.error)
//     );
//   }
// }