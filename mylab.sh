

gcloud compute instances create gcelab --zone $ZONE --machine-type e2-standard-2

gcloud compute disks create mydisk --size=200GB \
--zone $ZONE

gcloud compute instances attach-disk gcelab --disk mydisk --zone $ZONE

gcloud compute ssh gcelab --zone $ZONE

ls -l /dev/disk/by-id/

sudo mkdir /mnt/mydisk

sudo mkfs.ext4 -F -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/disk/by-id/scsi-0Google_PersistentDisk_persistent-disk-1

sudo mount -o discard,defaults /dev/disk/by-id/scsi-0Google_PersistentDisk_persistent-disk-1 /mnt/mydisk

sudo nano /etc/fstab
