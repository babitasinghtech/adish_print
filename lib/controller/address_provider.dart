import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/address.dart';

class AddressNotifier extends StateNotifier<List<Address>> {
  AddressNotifier()
    : super([
        // Default sample address
        Address(
          id: '1',
          fullName: 'Adish Kumar',
          phoneNumber: '+91 9876543210',
          addressLine1: '123 Main Street',
          addressLine2: 'Apartment 4B',
          city: 'Ghaziabad',
          state: 'Uttar Pradesh',
          pincode: '201001',
          landmark: 'Metro Station',
          isDefault: true,
          latitude: 28.6692,
          longitude: 77.4538,
        ),
      ]);

  void addAddress(Address address) {
    state = [...state, address];
  }

  void updateAddress(Address address) {
    state = [
      for (final addr in state)
        if (addr.id == address.id) address else addr,
    ];
  }

  void deleteAddress(String addressId) {
    state = state.where((addr) => addr.id != addressId).toList();
  }

  void setDefaultAddress(String addressId) {
    state = [
      for (final addr in state) addr.copyWith(isDefault: addr.id == addressId),
    ];
  }

  Address? get defaultAddress {
    try {
      return state.firstWhere((addr) => addr.isDefault);
    } catch (e) {
      return state.isNotEmpty ? state.first : null;
    }
  }
}

final addressProvider = StateNotifierProvider<AddressNotifier, List<Address>>((
  ref,
) {
  return AddressNotifier();
});

final selectedAddressProvider = StateProvider<Address?>((ref) {
  final addresses = ref.watch(addressProvider);
  return ref.read(addressProvider.notifier).defaultAddress;
});
