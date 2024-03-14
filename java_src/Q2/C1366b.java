package q2;

import android.graphics.Typeface;
import com.google.android.material.chip.Chip;
/* renamed from: q2.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1366b extends A2.h {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Chip f11990a;

    public C1366b(Chip chip) {
        this.f11990a = chip;
    }

    @Override // A2.h
    public final void a(int i4) {
    }

    @Override // A2.h
    public final void b(Typeface typeface, boolean z4) {
        Chip chip = this.f11990a;
        f fVar = chip.f7833h;
        chip.setText(fVar.f12004F0 ? fVar.f12010J : chip.getText());
        chip.requestLayout();
        chip.invalidate();
    }
}
