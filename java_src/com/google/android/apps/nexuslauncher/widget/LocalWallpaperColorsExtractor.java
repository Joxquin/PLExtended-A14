package com.google.android.apps.nexuslauncher.widget;

import android.app.WallpaperColors;
import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.RectF;
import android.util.SparseIntArray;
import android.widget.RemoteViews;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.LocalColorExtractor;
import d2.C0799a;
import java.util.List;
/* loaded from: classes.dex */
public class LocalWallpaperColorsExtractor extends LocalColorExtractor implements WallpaperManager.LocalWallpaperColorConsumer {

    /* renamed from: d  reason: collision with root package name */
    public final WallpaperManager f7625d;

    /* renamed from: e  reason: collision with root package name */
    public final C0799a f7626e;

    /* renamed from: f  reason: collision with root package name */
    public LocalColorExtractor.Listener f7627f = null;

    /* renamed from: g  reason: collision with root package name */
    public final RectF f7628g;

    /* renamed from: h  reason: collision with root package name */
    public final List f7629h;

    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LocalWallpaperColorsExtractor(android.content.Context r5) {
        /*
            r4 = this;
            java.lang.String r0 = "android.theme.customization.color_source"
            r4.<init>()
            r1 = 0
            r4.f7627f = r1
            android.graphics.RectF r2 = new android.graphics.RectF
            r2.<init>()
            android.graphics.RectF r2 = new android.graphics.RectF
            r2.<init>()
            r4.f7628g = r2
            java.util.List r2 = java.util.Collections.singletonList(r2)
            r4.f7629h = r2
            android.content.ContentResolver r2 = r5.getContentResolver()
            java.lang.String r3 = "theme_customization_overlay_packages"
            java.lang.String r2 = android.provider.Settings.Secure.getString(r2, r3)
            java.lang.String r2 = android.text.TextUtils.emptyIfNull(r2)
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto L4f
            org.json.JSONObject r3 = new org.json.JSONObject     // Catch: org.json.JSONException -> L47
            r3.<init>(r2)     // Catch: org.json.JSONException -> L47
            boolean r2 = r3.has(r0)     // Catch: org.json.JSONException -> L47
            if (r2 == 0) goto L4f
            java.lang.String r2 = "preset"
            java.lang.String r0 = r3.optString(r0)     // Catch: org.json.JSONException -> L47
            boolean r0 = r2.equals(r0)     // Catch: org.json.JSONException -> L47
            if (r0 == 0) goto L4f
            r0 = 0
            goto L50
        L47:
            r0 = move-exception
            java.lang.String r2 = "LocalWallpaperColorsExt"
            java.lang.String r3 = "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."
            android.util.Log.w(r2, r3, r0)
        L4f:
            r0 = 1
        L50:
            if (r0 == 0) goto L60
            android.app.WallpaperManager r0 = android.app.WallpaperManager.getInstance(r5)
            r4.f7625d = r0
            d2.a r0 = new d2.a
            r0.<init>(r5)
            r4.f7626e = r0
            goto L64
        L60:
            r4.f7625d = r1
            r4.f7626e = r1
        L64:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.widget.LocalWallpaperColorsExtractor.<init>(android.content.Context):void");
    }

    @Override // com.android.launcher3.widget.LocalColorExtractor
    public final void applyColorsOverride(Context context, WallpaperColors wallpaperColors) {
        SparseIntArray generateColorsOverride = generateColorsOverride(wallpaperColors);
        if (generateColorsOverride != null) {
            RemoteViews.ColorResources.create(context, generateColorsOverride).apply(context);
        }
    }

    @Override // com.android.launcher3.widget.LocalColorExtractor
    public final SparseIntArray generateColorsOverride(WallpaperColors wallpaperColors) {
        C0799a c0799a = this.f7626e;
        if (c0799a == null) {
            return null;
        }
        return c0799a.b(wallpaperColors);
    }

    public final void onColorsChanged(RectF rectF, WallpaperColors wallpaperColors) {
        LocalColorExtractor.Listener listener;
        if ((this.f7625d != null) && (listener = this.f7627f) != null) {
            ((LauncherAppWidgetHostView) listener).onColorsChanged(generateColorsOverride(wallpaperColors));
        }
    }
}
