package X;

import android.widget.SeekBar;
import android.widget.TextView;
import androidx.preference.SeekBarPreference;
/* loaded from: classes.dex */
public final class c0 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SeekBarPreference f2000a;

    public c0(SeekBarPreference seekBarPreference) {
        this.f2000a = seekBarPreference;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i4, boolean z4) {
        if (z4) {
            SeekBarPreference seekBarPreference = this.f2000a;
            if (seekBarPreference.f3718m || !seekBarPreference.f3713h) {
                seekBarPreference.c(seekBar);
                return;
            }
        }
        SeekBarPreference seekBarPreference2 = this.f2000a;
        int i5 = i4 + seekBarPreference2.f3710e;
        TextView textView = seekBarPreference2.f3715j;
        if (textView != null) {
            textView.setText(String.valueOf(i5));
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        this.f2000a.f3713h = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        this.f2000a.f3713h = false;
        int progress = seekBar.getProgress();
        SeekBarPreference seekBarPreference = this.f2000a;
        if (progress + seekBarPreference.f3710e != seekBarPreference.f3709d) {
            seekBarPreference.c(seekBar);
        }
    }
}
