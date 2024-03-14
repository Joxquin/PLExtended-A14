package w1;

import android.hardware.display.DisplayManager;
import android.view.Display;
/* renamed from: w1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1449a implements DisplayManager.DisplayListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1452d f12740d;

    public C1449a(C1452d c1452d) {
        this.f12740d = c1452d;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i4) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i4) {
        Display display = this.f12740d.f12745e.getDisplay();
        if (display != null && i4 == display.getDisplayId()) {
            int rotation = display.getRotation();
            Integer num = this.f12740d.f12749i;
            if (num == null || num == null || num.intValue() != rotation) {
                for (InterfaceC1450b interfaceC1450b : this.f12740d.f12747g) {
                    interfaceC1450b.onRotationChanged(rotation);
                }
                this.f12740d.f12749i = Integer.valueOf(rotation);
            }
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i4) {
    }
}
