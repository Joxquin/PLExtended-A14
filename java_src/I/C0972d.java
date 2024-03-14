package i;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import com.android.systemui.shared.R;
/* renamed from: i.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0972d extends ContextWrapper {

    /* renamed from: f  reason: collision with root package name */
    public static Configuration f9538f;

    /* renamed from: a  reason: collision with root package name */
    public int f9539a;

    /* renamed from: b  reason: collision with root package name */
    public Resources.Theme f9540b;

    /* renamed from: c  reason: collision with root package name */
    public LayoutInflater f9541c;

    /* renamed from: d  reason: collision with root package name */
    public Configuration f9542d;

    /* renamed from: e  reason: collision with root package name */
    public Resources f9543e;

    public C0972d() {
        super(null);
    }

    public final void a(Configuration configuration) {
        if (this.f9543e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f9542d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f9542d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.f9540b == null) {
            this.f9540b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f9540b.setTo(theme);
            }
        }
        this.f9540b.applyStyle(this.f9539a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        if (this.f9543e == null) {
            Configuration configuration = this.f9542d;
            if (configuration != null) {
                if (f9538f == null) {
                    Configuration configuration2 = new Configuration();
                    configuration2.fontScale = 0.0f;
                    f9538f = configuration2;
                }
                if (!configuration.equals(f9538f)) {
                    this.f9543e = createConfigurationContext(this.f9542d).getResources();
                }
            }
            this.f9543e = super.getResources();
        }
        return this.f9543e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f9541c == null) {
                this.f9541c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f9541c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f9540b;
        if (theme != null) {
            return theme;
        }
        if (this.f9539a == 0) {
            this.f9539a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.f9540b;
    }

    public final int getThemeResId() {
        return this.f9539a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i4) {
        if (this.f9539a != i4) {
            this.f9539a = i4;
            b();
        }
    }

    public C0972d(int i4, Context context) {
        super(context);
        this.f9539a = i4;
    }
}
