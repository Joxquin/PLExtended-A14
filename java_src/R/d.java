package R;

import android.text.Editable;
/* loaded from: classes.dex */
public final class d extends Editable.Factory {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f1618a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static volatile d f1619b;

    /* renamed from: c  reason: collision with root package name */
    public static Class f1620c;

    public d() {
        try {
            f1620c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, d.class.getClassLoader());
        } catch (Throwable unused) {
        }
    }

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f1620c;
        return cls != null ? new androidx.emoji2.text.f(cls, charSequence) : super.newEditable(charSequence);
    }
}
