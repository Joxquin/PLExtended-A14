package R1;

import android.content.Context;
/* loaded from: classes.dex */
public final class a implements i {

    /* renamed from: b  reason: collision with root package name */
    public static final Integer f1647b = 9;

    /* renamed from: a  reason: collision with root package name */
    public final Y1.f f1648a;

    public a(Context context) {
        if (context.getResources().getConfiguration().getLocales().toLanguageTags().contains("en-")) {
            Y1.f fVar = new Y1.f(context, f1647b.intValue());
            this.f1648a = fVar;
            fVar.f2288b.setAlarm(15000);
        }
    }
}
