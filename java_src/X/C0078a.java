package X;

import android.widget.CompoundButton;
import androidx.preference.CheckBoxPreference;
/* renamed from: X.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0078a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ CheckBoxPreference f1979d;

    public C0078a(CheckBoxPreference checkBoxPreference) {
        this.f1979d = checkBoxPreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z4) {
        if (this.f1979d.callChangeListener(Boolean.valueOf(z4))) {
            this.f1979d.setChecked(z4);
        } else {
            compoundButton.setChecked(!z4);
        }
    }
}
