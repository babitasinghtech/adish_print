// import 'package:flutter/material.dart';

// import '../../app/routes.dart';
// import '../../app/theme.dart';

// class OrderSuccessScreen extends StatelessWidget {
//   const OrderSuccessScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Spacer(),

//               // Success Animation
//               ZoomIn(
//                 duration: const Duration(milliseconds: 600),
//                 child: Container(
//                   padding: const EdgeInsets.all(32),
//                   decoration: BoxDecoration(
//                     color: AppColors.success.withOpacity(0.1),
//                     shape: BoxShape.circle,
//                   ),
//                   child: Container(
//                     padding: const EdgeInsets.all(24),
//                     decoration: BoxDecoration(
//                       color: AppColors.success.withOpacity(0.2),
//                       shape: BoxShape.circle,
//                     ),
//                     child: const Icon(
//                       Icons.check_circle,
//                       size: 80,
//                       color: AppColors.success,
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 40),

//               // Success Message
//               FadeInUp(
//                 delay: const Duration(milliseconds: 200),
//                 child: Text(
//                   'Order Placed Successfully!',
//                   style: Theme.of(context).textTheme.displaySmall?.copyWith(
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),

//               const SizedBox(height: 16),

//               FadeInUp(
//                 delay: const Duration(milliseconds: 400),
//                 child: Text(
//                   'Thank you for your order. We\'ll send you a confirmation email shortly.',
//                   style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//                     color: AppColors.textSecondary,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),

//               const SizedBox(height: 40),

//               // Order Details Card
//               FadeInUp(
//                 delay: const Duration(milliseconds: 600),
//                 child: Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     color: AppColors.surfaceVariant,
//                     borderRadius: BorderRadius.circular(16),
//                     border: Border.all(color: AppColors.border),
//                   ),
//                   child: Column(
//                     children: [
//                       _buildInfoRow(
//                         icon: Icons.calendar_month,
//                         label: 'Order Date',
//                         value: _formatDate(DateTime.now()),
//                       ),
//                       const Divider(height: 24),
//                       _buildInfoRow(
//                         icon: Icons.track_changes,
//                         label: 'Estimated Delivery',
//                         value: _formatDate(
//                           DateTime.now().add(const Duration(days: 5)),
//                         ),
//                       ),
//                       const Divider(height: 24),
//                       _buildInfoRow(
//                         icon: Icons.money,
//                         label: 'Payment Method',
//                         value: 'Cash on Delivery',
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               const Spacer(),

//               // Action Buttons
//               FadeInUp(
//                 delay: const Duration(milliseconds: 800),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       width: double.infinity,
//                       child: ElevatedButton.icon(
//                         onPressed: () {
//                           Navigator.of(context).pushNamedAndRemoveUntil(
//                             AppRoutes.home,
//                             (route) => false,
//                           );
//                         },
//                         icon: const Icon(Iconsax.home),
//                         label: const Text('Continue Shopping'),
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(vertical: 16),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     SizedBox(
//                       width: double.infinity,
//                       child: OutlinedButton.icon(
//                         onPressed: () {
//                           // Navigate to orders screen (to be implemented)
//                           Navigator.of(context).pushNamedAndRemoveUntil(
//                             AppRoutes.home,
//                             (route) => false,
//                           );
//                         },
//                         icon: const Icon(Icons.bag_tick),
//                         label: const Text('Track Order'),
//                         style: OutlinedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(vertical: 16),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoRow({
//     required IconData icon,
//     required String label,
//     required String value,
//   }) {
//     return Row(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(10),
//           decoration: BoxDecoration(
//             color: AppColors.primary.withOpacity(0.1),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Icon(icon, color: AppColors.primary, size: 20),
//         ),
//         const SizedBox(width: 16),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 label,
//                 style: const TextStyle(
//                   color: AppColors.textSecondary,
//                   fontSize: 12,
//                 ),
//               ),
//               const SizedBox(height: 2),
//               Text(
//                 value,
//                 style: const TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 14,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   String _formatDate(DateTime date) {
//     final months = [
//       'Jan',
//       'Feb',
//       'Mar',
//       'Apr',
//       'May',
//       'Jun',
//       'Jul',
//       'Aug',
//       'Sep',
//       'Oct',
//       'Nov',
//       'Dec',
//     ];
//     return '${date.day} ${months[date.month - 1]}, ${date.year}';
//   }
// }
