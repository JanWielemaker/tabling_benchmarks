if [ -z "$1" ]; then
  tests="$(echo *-hprolog.pl)"
else
  tests="$*"
fi

for f in $tests; do
  echo "TEST $f ..."
  swipl -g go,halt -G8g $f
done
