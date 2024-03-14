package f0;

import android.widget.SeekBar;
/* loaded from: classes.dex */
public final class t implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f9245a;

    public t(x xVar) {
        this.f9245a = xVar;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i4, boolean z4) {
        x xVar = this.f9245a;
        xVar.f9272T = i4 + xVar.f9273U;
        long currentTimeMillis = System.currentTimeMillis();
        x xVar2 = this.f9245a;
        long j4 = xVar2.f9271S;
        if (j4 != 0 && currentTimeMillis - j4 > 200) {
            xVar2.f9269Q = false;
            xVar2.f9270R.removeCallbacks(xVar2.f9282g0);
            this.f9245a.x();
        } else if (xVar2.f9269Q) {
        } else {
            xVar2.f9269Q = true;
            xVar2.f9270R.postDelayed(xVar2.f9282g0, 200L);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        this.f9245a.f9268P = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        x xVar = this.f9245a;
        xVar.f9268P = false;
        if (xVar.f9269Q) {
            xVar.f9269Q = false;
            xVar.f9270R.removeCallbacks(xVar.f9282g0);
            x xVar2 = this.f9245a;
            int progress = seekBar.getProgress();
            x xVar3 = this.f9245a;
            xVar2.f9272T = progress + xVar3.f9273U;
            xVar3.x();
        }
    }
}
