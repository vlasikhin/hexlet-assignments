# frozen_string_literal: true

# BEGIN
def compare_versions(ver1, ver2)
  sem_ver1 = ver1.split('.').map{ |v| v.to_i }
  sem_ver2 = ver2.split('.').map{ |v| v.to_i }

  sem_ver1 <=> sem_ver2
end
# END
