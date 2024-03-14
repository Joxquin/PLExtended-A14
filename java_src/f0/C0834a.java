package f0;

import android.content.Context;
import android.util.TypedValue;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
/* renamed from: f0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0834a extends FrameLayout {

    /* renamed from: d  reason: collision with root package name */
    public final int f9144d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9145e;

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f9146f;

    /* renamed from: g  reason: collision with root package name */
    public int f9147g;

    public C0834a(Context context) {
        super(context);
        this.f9147g = -16777216;
        this.f9144d = (int) TypedValue.applyDimension(1, 48.0f, context.getResources().getDisplayMetrics());
        this.f9145e = (int) TypedValue.applyDimension(1, 12.0f, context.getResources().getDisplayMetrics());
        LinearLayout linearLayout = new LinearLayout(context);
        this.f9146f = linearLayout;
        linearLayout.setOrientation(0);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        addView(linearLayout);
    }
}
