import 'package:adish_print/data/models/category_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryProvider = Provider<List<CategoryModel>>((ref) {
  return [
    CategoryModel(
      title: "Photo Frames",
      images: [
        "https://cms.cloudinary.vpsvc.com/image/upload/if_ar_gt_1.1/c_scale,t_pdpHeroGallery_Gallery/if_else/c_scale,w_816/if_end/f_auto,q_auto:best,dpr_auto/india%20lob/photo%20frames/in_photo-with-frame_001",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4VJvI0N-pT-0kW8l4SPhJyVHqa0Y4GF-pBd1-tmc9Bg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8Fzp5iPwVY0IcS61WPLKjr6sg0rhp2WQTZpF3ob5Wcg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuJCYdU4YuMzk3yRvgsRKBs2_5RHAPbZb-xg&s",
      ],
    ),
    CategoryModel(
      title: "Wall Frames",
      images: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCAdhlZMBf3gRl--wtCpWZYgdOOm7zHUkevA&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9mIThW5U4XtjSUkiJcygS_PMj95ku4ckdpg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMaO9q8F3MtL-10DQloXhJ0r9HxTvzfrsnrw&s",
      ],
    ),
    CategoryModel(
      title: "Wooden Frames",
      images: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1LvbAu3JfuhSDHrMBepsBGwPuIbbYibNT9w&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9mIThW5U4XtjSUkiJcygS_PMj95ku4ckdpg&s",
      ],
    ),
    CategoryModel(
      title: "Modern Frames",
      images: [
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn3_WZgJK7Dj4wwPtF0lYDFuonW1khgq1D8w&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9mIThW5U4XtjSUkiJcygS_PMj95ku4ckdpg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR59k8OjIl5Zu8LbYJSsOTXbIZ8QmMNbqt8Hg&s",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9mIThW5U4XtjSUkiJcygS_PMj95ku4ckdpg&s",
      ],
    ),
  ];
});
