package X;

import android.widget.CompoundButton;
import androidx.preference.SwitchPreference;
/* loaded from: classes.dex */
public final class g0 implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SwitchPreference f2008d;

    public g0(SwitchPreference switchPreference) {
        this.f2008d = switchPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z4) {
        if (this.f2008d.callChangeListener(Boolean.valueOf(z4))) {
            this.f2008d.setChecked(z4);
        } else {
            compoundButton.setChecked(!z4);
        }
    }
}
