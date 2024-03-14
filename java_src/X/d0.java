package X;

import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import androidx.preference.SeekBarPreference;
/* loaded from: classes.dex */
public final class d0 implements View.OnKeyListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SeekBarPreference f2001d;

    public d0(SeekBarPreference seekBarPreference) {
        this.f2001d = seekBarPreference;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i4, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        SeekBarPreference seekBarPreference = this.f2001d;
        if ((!seekBarPreference.f3716k && (i4 == 21 || i4 == 22)) || i4 == 23 || i4 == 66) {
            return false;
        }
        SeekBar seekBar = seekBarPreference.f3714i;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null and hence cannot be adjusted.");
            return false;
        }
        return seekBar.onKeyDown(i4, keyEvent);
    }
}
