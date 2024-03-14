package k;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import d.C0792a;
import f.C0832a;
import java.util.WeakHashMap;
/* renamed from: k.H  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1124H {

    /* renamed from: a  reason: collision with root package name */
    public final ImageView f10765a;

    /* renamed from: b  reason: collision with root package name */
    public P0 f10766b;

    /* renamed from: c  reason: collision with root package name */
    public int f10767c = 0;

    public C1124H(ImageView imageView) {
        this.f10765a = imageView;
    }

    public final void a() {
        P0 p02;
        ImageView imageView = this.f10765a;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            Rect rect = C1154o0.f10945a;
        }
        if (drawable == null || (p02 = this.f10766b) == null) {
            return;
        }
        C1117A.e(drawable, p02, imageView.getDrawableState());
    }

    public final void b(AttributeSet attributeSet, int i4) {
        int i5;
        ImageView imageView = this.f10765a;
        Context context = imageView.getContext();
        int[] iArr = C0792a.f8736f;
        R0 m4 = R0.m(context, attributeSet, iArr, i4);
        Context context2 = imageView.getContext();
        TypedArray typedArray = m4.f10822b;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.H.b(imageView, context2, iArr, attributeSet, typedArray, i4, 0);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (i5 = m4.i(1, -1)) != -1 && (drawable = C0832a.a(i5, imageView.getContext())) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                Rect rect = C1154o0.f10945a;
            }
            if (m4.l(2)) {
                imageView.setImageTintList(m4.b(2));
            }
            if (m4.l(3)) {
                imageView.setImageTintMode(C1154o0.b(m4.h(3, -1), null));
            }
        } finally {
            m4.n();
        }
    }
}
