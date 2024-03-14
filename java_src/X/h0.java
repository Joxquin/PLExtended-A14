package X;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreferenceCompat;
/* loaded from: classes.dex */
public final class h0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SwitchPreferenceCompat f2010d;

    public h0(SwitchPreferenceCompat switchPreferenceCompat) {
        this.f2010d = switchPreferenceCompat;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z4) {
        if (this.f2010d.callChangeListener(Boolean.valueOf(z4))) {
            this.f2010d.setChecked(z4);
        } else {
            compoundButton.setChecked(!z4);
        }
    }
}
