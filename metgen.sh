
while read a
do
    a=$( echo $a | cut -d ' ' -f 2)
    echo "function TRDFKoeffForm.f$a: double;"
    echo "begin"
    echo "  try"
    echo "    Result := StrToFloat(ed_$a.Text);"
    echo "  except"
    echo "    on E:EconvertError do"
    echo "      Result := -1;"
    echo "  end;"
    echo "end;"
    echo ""
done
