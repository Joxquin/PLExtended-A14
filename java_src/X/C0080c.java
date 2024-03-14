package X;

import android.view.View;
import android.widget.AdapterView;
import androidx.preference.DropDownPreference;
/* renamed from: X.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0080c implements AdapterView.OnItemSelectedListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ DropDownPreference f1999d;

    public C0080c(DropDownPreference dropDownPreference) {
        this.f1999d = dropDownPreference;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i4, long j4) {
        if (i4 >= 0) {
            String charSequence = this.f1999d.f3656k[i4].toString();
            if (charSequence.equals(this.f1999d.f3657l) || !this.f1999d.callChangeListener(charSequence)) {
                return;
            }
            this.f1999d.d(charSequence);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }
}
