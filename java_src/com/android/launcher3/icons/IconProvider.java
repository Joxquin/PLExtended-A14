package com.android.launcher3.icons;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.text.TextUtils;
import com.android.launcher3.util.SafeCloseable;
import com.android.systemui.shared.R;
import java.util.Calendar;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public class IconProvider {
    public static final boolean ATLEAST_T;
    static final int CONFIG_ICON_MASK_RES_ID = Resources.getSystem().getIdentifier("config_icon_mask", "string", "android");
    private final ComponentName mCalendar;
    private final ComponentName mClock;
    protected final Context mContext;

    /* loaded from: classes.dex */
    public interface IconChangeListener {
        void onAppIconChanged(String str, UserHandle userHandle);

        void onSystemIconStateChanged(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class IconChangeReceiver extends BroadcastReceiver implements SafeCloseable {
        private final IconChangeListener mCallback;
        private String mIconState;

        public IconChangeReceiver(IconChangeListener iconChangeListener, Handler handler) {
            this.mCallback = iconChangeListener;
            this.mIconState = IconProvider.this.getSystemIconState();
            IntentFilter intentFilter = new IntentFilter("android.intent.action.OVERLAY_CHANGED");
            intentFilter.addDataScheme("package");
            intentFilter.addDataSchemeSpecificPart("android", 0);
            Context context = IconProvider.this.mContext;
            context.registerReceiver(this, intentFilter, null, handler);
            if (IconProvider.this.mCalendar == null && IconProvider.this.mClock == null) {
                return;
            }
            IntentFilter intentFilter2 = new IntentFilter("android.intent.action.TIMEZONE_CHANGED");
            if (IconProvider.this.mCalendar != null) {
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.DATE_CHANGED");
            }
            context.registerReceiver(this, intentFilter2, null, handler);
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            IconProvider.this.mContext.unregisterReceiver(this);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            action.getClass();
            char c4 = 65535;
            switch (action.hashCode()) {
                case -1946981856:
                    if (action.equals("android.intent.action.OVERLAY_CHANGED")) {
                        c4 = 0;
                        break;
                    }
                    break;
                case 502473491:
                    if (action.equals("android.intent.action.TIMEZONE_CHANGED")) {
                        c4 = 1;
                        break;
                    }
                    break;
                case 505380757:
                    if (action.equals("android.intent.action.TIME_SET")) {
                        c4 = 2;
                        break;
                    }
                    break;
                case 1041332296:
                    if (action.equals("android.intent.action.DATE_CHANGED")) {
                        c4 = 3;
                        break;
                    }
                    break;
            }
            switch (c4) {
                case 0:
                    String systemIconState = IconProvider.this.getSystemIconState();
                    if (this.mIconState.equals(systemIconState)) {
                        return;
                    }
                    this.mIconState = systemIconState;
                    this.mCallback.onSystemIconStateChanged(systemIconState);
                    return;
                case 1:
                    if (IconProvider.this.mClock != null) {
                        this.mCallback.onAppIconChanged(IconProvider.this.mClock.getPackageName(), Process.myUserHandle());
                        break;
                    }
                    break;
                case 2:
                case 3:
                    break;
                default:
                    return;
            }
            if (IconProvider.this.mCalendar != null) {
                for (UserHandle userHandle : ((UserManager) context.getSystemService(UserManager.class)).getUserProfiles()) {
                    this.mCallback.onAppIconChanged(IconProvider.this.mCalendar.getPackageName(), userHandle);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public final class ThemeData {
        final int mResID;
        final Resources mResources;

        public ThemeData(int i4, Resources resources) {
            this.mResources = resources;
            this.mResID = i4;
        }
    }

    static {
        int i4 = I.b.f550a;
        ATLEAST_T = true;
    }

    public IconProvider(Context context) {
        this.mContext = context;
        String string = context.getString(R.string.calendar_component_name);
        this.mCalendar = TextUtils.isEmpty(string) ? null : ComponentName.unflattenFromString(string);
        String string2 = context.getString(R.string.clock_component_name);
        this.mClock = TextUtils.isEmpty(string2) ? null : ComponentName.unflattenFromString(string2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0101, code lost:
        r11 = (android.graphics.drawable.Drawable) r14.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0107, code lost:
        if (r5 == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010b, code lost:
        if ((r11 instanceof android.graphics.drawable.AdaptiveIconDrawable) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x010d, code lost:
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x010f, code lost:
        r12 = (android.graphics.drawable.AdaptiveIconDrawable) r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0116, code lost:
        if (r12.getMonochrome() != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0118, code lost:
        r13 = r12.getBackground();
        r12 = r12.getForeground();
        r14 = r0.mResources;
        r0 = r0.mResID;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x012e, code lost:
        if ("drawable".equals(r14.getResourceTypeName(r0)) != false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0131, code lost:
        r7 = new android.graphics.drawable.InsetDrawable(new android.graphics.drawable.InsetDrawable(r14.getDrawable(r0).mutate(), 0.2f), android.graphics.drawable.AdaptiveIconDrawable.getExtraInsetFraction() / ((android.graphics.drawable.AdaptiveIconDrawable.getExtraInsetFraction() * 2.0f) + 1.0f));
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x014e, code lost:
        r11 = new android.graphics.drawable.AdaptiveIconDrawable(r13, r12, r7);
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006b A[Catch: NameNotFoundException -> 0x00fe, TRY_ENTER, TryCatch #1 {NameNotFoundException -> 0x00fe, blocks: (B:7:0x0026, B:17:0x006b, B:19:0x0071, B:22:0x0077, B:25:0x0082, B:27:0x0092, B:30:0x00ae, B:34:0x00e3, B:33:0x00c6, B:10:0x0039, B:13:0x0055), top: B:60:0x0026 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.drawable.Drawable getIconWithOverrides(java.lang.String r12, int r13, java.util.function.Supplier r14) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.IconProvider.getIconWithOverrides(java.lang.String, int, java.util.function.Supplier):android.graphics.drawable.Drawable");
    }

    public final Drawable getIcon(final LauncherActivityInfo launcherActivityInfo, final int i4) {
        return getIconWithOverrides(launcherActivityInfo.getApplicationInfo().packageName, i4, new Supplier() { // from class: com.android.launcher3.icons.r
            @Override // java.util.function.Supplier
            public final Object get() {
                return launcherActivityInfo.getIcon(i4);
            }
        });
    }

    public String getSystemIconState() {
        int i4 = CONFIG_ICON_MASK_RES_ID;
        return i4 == 0 ? "" : this.mContext.getResources().getString(i4);
    }

    public final String getSystemStateForPackage(String str, String str2) {
        ComponentName componentName = this.mCalendar;
        if (componentName == null || !componentName.getPackageName().equals(str2)) {
            return str;
        }
        StringBuilder a4 = t.j.a(str, " ");
        a4.append(Calendar.getInstance().get(5) - 1);
        return a4.toString();
    }

    public ThemeData getThemeDataForPackage(String str) {
        return null;
    }

    public final SafeCloseable registerIconChangeListener(IconChangeListener iconChangeListener, Handler handler) {
        return new IconChangeReceiver(iconChangeListener, handler);
    }

    public final Drawable getIcon(final ActivityInfo activityInfo) {
        final int i4 = this.mContext.getResources().getConfiguration().densityDpi;
        return getIconWithOverrides(activityInfo.applicationInfo.packageName, i4, new Supplier() { // from class: com.android.launcher3.icons.q
            /* JADX WARN: Removed duplicated region for block: B:14:? A[RETURN, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
            @Override // java.util.function.Supplier
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object get() {
                /*
                    r5 = this;
                    com.android.launcher3.icons.IconProvider r0 = com.android.launcher3.icons.IconProvider.this
                    android.content.pm.ActivityInfo r1 = r2
                    int r5 = r3
                    r0.getClass()
                    int r2 = r1.getIconResource()
                    android.content.Context r0 = r0.mContext
                    if (r5 == 0) goto L22
                    if (r2 == 0) goto L22
                    android.content.pm.PackageManager r3 = r0.getPackageManager()     // Catch: java.lang.Throwable -> L22
                    android.content.pm.ApplicationInfo r4 = r1.applicationInfo     // Catch: java.lang.Throwable -> L22
                    android.content.res.Resources r3 = r3.getResourcesForApplication(r4)     // Catch: java.lang.Throwable -> L22
                    android.graphics.drawable.Drawable r5 = r3.getDrawableForDensity(r2, r5)     // Catch: java.lang.Throwable -> L22
                    goto L23
                L22:
                    r5 = 0
                L23:
                    if (r5 != 0) goto L2d
                    android.content.pm.PackageManager r5 = r0.getPackageManager()
                    android.graphics.drawable.Drawable r5 = r1.loadIcon(r5)
                L2d:
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.q.get():java.lang.Object");
            }
        });
    }
}
