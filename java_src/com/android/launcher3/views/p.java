package com.android.launcher3.views;

import android.graphics.drawable.Drawable;
import com.android.launcher3.icons.FastBitmapDrawable;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final /* synthetic */ class p implements Supplier {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5359a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Drawable f5360b;

    public /* synthetic */ p(Drawable drawable, int i4) {
        this.f5359a = i4;
        this.f5360b = drawable;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        Object obj;
        switch (this.f5359a) {
            case 0:
                obj = (FastBitmapDrawable) this.f5360b;
                break;
            case 1:
                int i4 = FloatingIconView.f5330d;
                return ((FastBitmapDrawable.FastBitmapConstantState) ((FastBitmapDrawable) this.f5360b).getConstantState()).newDrawable();
            default:
                obj = this.f5360b;
                break;
        }
        int i5 = FloatingIconView.f5330d;
        return obj;
    }
}
