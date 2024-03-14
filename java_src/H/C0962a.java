package h;

import android.content.Context;
import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;
/* renamed from: h.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0962a implements TransformationMethod {

    /* renamed from: a  reason: collision with root package name */
    public final Locale f9486a;

    public C0962a(Context context) {
        this.f9486a = context.getResources().getConfiguration().locale;
    }

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (charSequence != null) {
            return charSequence.toString().toUpperCase(this.f9486a);
        }
        return null;
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z4, int i4, Rect rect) {
    }
}
