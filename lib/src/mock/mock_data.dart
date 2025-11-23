// -----------------------------------------------------------------------------
// MOCK DATA (Temporary — DO NOT OVERWRITE)
// -----------------------------------------------------------------------------
// This file contains mock data used during UI extraction and early
// integration. It MUST NOT be overwritten or replaced with real backend
// data until the mock has been reviewed and `MOCK_DATA_APPROVED` is set to
// `true` by an authorized reviewer.
//
// When replacing this file with production data, also update the
// progress entry under `flutterflow.codes/progress/` and obtain approval.
// -----------------------------------------------------------------------------

const bool mockDataApproved = false; // Set to `true` ONLY after approval.

/// Mock featured workouts (title, optional image)
final List<Map<String, String>> mockFeaturedWorkouts = [
  {'title': 'Quick Burn', 'image': ''},
  {'title': 'Core Blast', 'image': ''},
  {'title': 'Morning Flow', 'image': ''},
];

/// Mock meditations / vertical items
final List<Map<String, String>> mockMeditations = [
  {'title': '5 min Breathing', 'image': ''},
  {'title': 'Sleep Soundscape', 'image': ''},
  {'title': 'Focus Session', 'image': ''},
];
