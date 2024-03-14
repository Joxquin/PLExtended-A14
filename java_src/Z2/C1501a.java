package z2;

import A2.d;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.systemui.shared.R;
import i2.C0980a;
import k.M;
import s2.C1394a;
import x2.C1480r;
/* renamed from: z2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1501a extends M {

    /* renamed from: j  reason: collision with root package name */
    public static final int[][] f12998j = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: h  reason: collision with root package name */
    public ColorStateList f12999h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f13000i;

    public C1501a(Context context, AttributeSet attributeSet) {
        super(H2.a.a(context, attributeSet, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton), attributeSet);
        Context context2 = getContext();
        TypedArray d4 = C1480r.d(context2, attributeSet, C0980a.f9642r, R.attr.radioButtonStyle, R.style.Widget_MaterialComponents_CompoundButton_RadioButton, new int[0]);
        if (d4.hasValue(0)) {
            setButtonTintList(d.a(context2, d4, 0));
        }
        this.f13000i = d4.getBoolean(1, false);
        d4.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f13000i && getButtonTintList() == null) {
            this.f13000i = true;
            if (this.f12999h == null) {
                int b4 = C1394a.b(this, R.attr.colorControlActivated);
                int b5 = C1394a.b(this, R.attr.colorOnSurface);
                int b6 = C1394a.b(this, R.attr.colorSurface);
                this.f12999h = new ColorStateList(f12998j, new int[]{C1394a.d(b6, b4, 1.0f), C1394a.d(b6, b5, 0.54f), C1394a.d(b6, b5, 0.38f), C1394a.d(b6, b5, 0.38f)});
            }
            setButtonTintList(this.f12999h);
        }
    }
}
