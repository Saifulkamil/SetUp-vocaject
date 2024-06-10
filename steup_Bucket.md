create bucket

    - fill name bucket
    - location type = region
    - choose a storage class for your data = set a default class = standar
    - Access control = uniform
        - uni form = Semua akses objek dikontrol oleh izin bucket dan objek tidak dapat memiliki daftar kontrol akses (ACL) sendiri.
        - fine grained = Semua akses objek dikontrol oleh izin bucket dan objek tidak dapat memiliki daftar kontrol akses (ACL) sendiri.
    - create

setting permission bucket

    - Public access
        - Not public = This bucket is not publicly accessible since public access is being prevented. Because of this restriction, objects cannot be publicly shared over the internet. atau (Bucket ini tidak dapat diakses publik karena akses publik dicegah. Karena pembatasan ini, objek tidak dapat dibagikan secara publik melalui internet.)
    <!-- - permission
        - + grand access  -->

create service account to access bucket form compute engine

    - iam & admin
        - sevice account
            - Service account details
                - create service account
                - fill service account name
                - file service account id = masukan saja seperti name account
                - Service account description = copy email address yang sudah di sediakan di bawah service account id
                - create dan continue

            - Grant this service account access to project
                - - select role  - cloud Storage => Storage Admin

            - no 3 next aja = kosongkan
            - done
