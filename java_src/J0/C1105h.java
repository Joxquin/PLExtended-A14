package j0;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;
/* renamed from: j0.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1105h extends ViewGroup.LayoutParams {

    /* renamed from: a  reason: collision with root package name */
    public boolean f10645a;

    /* renamed from: b  reason: collision with root package name */
    public final int f10646b;

    /* renamed from: c  reason: collision with root package name */
    public float f10647c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f10648d;

    /* renamed from: e  reason: collision with root package name */
    public int f10649e;

    public C1105h() {
        super(-1, -1);
        this.f10647c = 0.0f;
    }

    public C1105h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10647c = 0.0f;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1111n.f10655Q);
        this.f10646b = obtainStyledAttributes.getInteger(0, 48);
        obtainStyledAttributes.recycle();
    }
}
