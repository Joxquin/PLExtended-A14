package androidx.preference;

import X.C0080c;
import X.a0;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class DropDownPreference extends ListPreference {

    /* renamed from: o  reason: collision with root package name */
    public final ArrayAdapter f3645o;

    /* renamed from: p  reason: collision with root package name */
    public Spinner f3646p;

    /* renamed from: q  reason: collision with root package name */
    public final C0080c f3647q;

    public DropDownPreference() {
        throw null;
    }

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // androidx.preference.Preference
    public final void notifyChanged() {
        super.notifyChanged();
        ArrayAdapter arrayAdapter = this.f3645o;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public final void onBindViewHolder(a0 a0Var) {
        Spinner spinner = (Spinner) a0Var.itemView.findViewById(R.id.spinner);
        this.f3646p = spinner;
        spinner.setAdapter((SpinnerAdapter) this.f3645o);
        this.f3646p.setOnItemSelectedListener(this.f3647q);
        Spinner spinner2 = this.f3646p;
        String str = this.f3657l;
        CharSequence[] charSequenceArr = this.f3656k;
        int i4 = -1;
        if (str != null && charSequenceArr != null) {
            int length = charSequenceArr.length - 1;
            while (true) {
                if (length < 0) {
                    break;
                } else if (TextUtils.equals(charSequenceArr[length].toString(), str)) {
                    i4 = length;
                    break;
                } else {
                    length--;
                }
            }
        }
        spinner2.setSelection(i4);
        super.onBindViewHolder(a0Var);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public final void onClick() {
        this.f3646p.performClick();
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, R.attr.dropdownPreferenceStyle);
        this.f3647q = new C0080c(this);
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, 17367049);
        this.f3645o = arrayAdapter;
        arrayAdapter.clear();
        CharSequence[] charSequenceArr = this.f3655j;
        if (charSequenceArr != null) {
            for (CharSequence charSequence : charSequenceArr) {
                this.f3645o.add(charSequence.toString());
            }
        }
    }
}
