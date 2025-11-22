rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /users/{document} {
      allow create: if request.auth.uid == document;
      allow read: if request.auth.uid == document;
      allow write: if request.auth.uid == document;
      allow delete: if request.auth.uid == document;
    }

    match /workout/{document} {
      allow create: if true;
      allow read: if true;
      allow write: if false;
      allow delete: if false;
    }

    match /meditation/{document} {
      allow create: if true;
      allow read: if true;
      allow write: if false;
      allow delete: if false;
    }

    match /challenge/{document} {
      allow create: if true;
      allow read: if true;
      allow write: if false;
      allow delete: if false;
    }

    match /meditive_mornings/{document} {
      allow create: if true;
      allow read: if true;
      allow write: if false;
      allow delete: if false;
    }

    match /med_course/{document} {
      allow create: if true;
      allow read: if true;
      allow write: if false;
      allow delete: if false;
    }

    match /music/{document} {
      allow create: if true;
      allow read: if true;
      allow write: if false;
      allow delete: if false;
    }

    match /sleep/{document} {
      allow create: if true;
      allow read: if true;
      allow write: if false;
      allow delete: if false;
    }
  }
}
