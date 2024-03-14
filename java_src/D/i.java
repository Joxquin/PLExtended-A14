package D;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public final ColorStateList f269a;

    /* renamed from: b  reason: collision with root package name */
    public final Configuration f270b;

    /* renamed from: c  reason: collision with root package name */
    public final int f271c;

    public i(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
        this.f269a = colorStateList;
        this.f270b = configuration;
        this.f271c = theme == null ? 0 : theme.hashCode();
    }
}
