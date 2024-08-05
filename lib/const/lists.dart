import '../models/explore_model.dart';
import '../models/places_model.dart';

List<ExploreModel> homeScreenList = [
  ExploreModel(name: 'Explore', image: 'assets/images/explore.jpg'),
  ExploreModel(name: 'Book Now', image: 'assets/images/booking.webp'),
  ExploreModel(name: 'Restaurants', image: 'assets/images/res.jpg'),
  // ExploreModel(name: 'Cafeterias', image: 'assets/images/cafeteria.jpg'),
  ExploreModel(name: 'Blogs', image: 'assets/images/blogs.jpg'),
];
List imagesList = [
  'https://media.istockphoto.com/id/924212018/photo/dubai-marina-skyline.webp?b=1&s=170667a&w=0&k=20&c=_HI0c-fnVthHGpui-ct_rx0LSmL7BOmODET8ZDOTFgo=',
  'https://media.istockphoto.com/id/157696054/photo/4wd-car-and-footprints-in-the-desert.webp?b=1&s=170667a&w=0&k=20&c=sDEcoK-3gABxAxQEYi6jzzcSkWX95PZC9S9S58pV7Us=',
  'https://media.istockphoto.com/id/1154761064/photo/the-palm-island-panorama-with-dubai-marina-in-the-background-aerial.webp?b=1&s=170667a&w=0&k=20&c=tNT0Lf22YlU-7R6pXysuT_vJBxM56Vz1EupEQ30vcwQ='
];
List<PlacesModel> dubaiPopularPlaces = [
  PlacesModel(
      placeName: 'Marina',
      price: 205,
      placeImage:
          'https://media.istockphoto.com/id/924212018/photo/dubai-marina-skyline.webp?b=1&s=170667a&w=0&k=20&c=_HI0c-fnVthHGpui-ct_rx0LSmL7BOmODET8ZDOTFgo='),
  PlacesModel(
    placeName: 'Desert Safari',
    price: 520,
    placeImage:
        'https://media.istockphoto.com/id/157696054/photo/4wd-car-and-footprints-in-the-desert.webp?b=1&s=170667a&w=0&k=20&c=sDEcoK-3gABxAxQEYi6jzzcSkWX95PZC9S9S58pV7Us=',
  ),
  PlacesModel(
      placeName: 'Sky View',
      price: 120,
      placeImage:
          'https://media.istockphoto.com/id/1154761064/photo/the-palm-island-panorama-with-dubai-marina-in-the-background-aerial.webp?b=1&s=170667a&w=0&k=20&c=tNT0Lf22YlU-7R6pXysuT_vJBxM56Vz1EupEQ30vcwQ='),
  PlacesModel(
    placeName: 'Burj Khalifa',
    price: 420,
    placeImage:
        'https://media.istockphoto.com/id/183342824/photo/stylized-aerial-view-of-dubai-city.webp?b=1&s=170667a&w=0&k=20&c=8znCwSW4E99HibS2N1hUb7IEcTJC04VVDj-t7_WHPpU=',
  ),
  PlacesModel(
    placeName: "Dubai Mall",
    price: 300,
    placeImage:
        'https://media.cntravellerme.com/photos/64adaa3b8065f76731bd4b67/16:9/w_2560%2Cc_limit/Hero-Dubai-Mall-Fashion-Avenue-Dubai-Alamy-R9FRB7.jpg',
  ),
  PlacesModel(
    placeName: 'Burj Al Arab',
    price: 259,
    placeImage:
        'https://images.unsplash.com/photo-1518684079-3c830dcef090?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8QnVyaiUyMHVsJTIwYXJhYiUyMGR1YmFpfGVufDB8fDB8fHww',
  ),
  PlacesModel(
    placeName: 'Dubai Fountain',
    price: 320,
    placeImage:
        'https://media.istockphoto.com/id/625716084/photo/dubai-dancing-fountain.jpg?s=612x612&w=is&k=20&c=hDTib1MfEjWiKam8WcUY4MVX0r2DQTmBgf1BIsGpd6k=',
  ),
  PlacesModel(
    placeName: 'Miracle Garden',
    price: 270,
    placeImage:
        'https://media.istockphoto.com/id/522466272/photo/bahouses-of-flowers-in-the-park-dubai-miracle-garden.webp?b=1&s=170667a&w=0&k=20&c=aV7TPnhDSB7TGA7nmQI_4WjP_WFOVsyDqSf1j_5YWck=',
  ),
  PlacesModel(
    placeName: 'Future Museum',
    price: 180,
    placeImage: 'https://www.archpaper.com/wp-content/uploads/2022/02/Mohammad-Aziz-scaled.jpg',
  )
];
List<String> dubaiStateNames = [
  'Dubai',
  'Abu Dhabi',
  'Sharjah',
  'Ajman',
  'Umm Al-Quwain',
  'Fujairah',
  'Ras Al Khaimah',
];
