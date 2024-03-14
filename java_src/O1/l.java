package O1;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.Application;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.views.OptionsPopupView;
import com.android.launcher3.views.Snackbar;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.customize.OptionsPopupDialog$PopupView;
import com.google.android.apps.nexuslauncher.customize.WallpaperCarouselView;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherEvent;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class l extends ContextThemeWrapper implements ActivityContext, DialogInterface.OnShowListener, DialogInterface.OnDismissListener, Application.ActivityLifecycleCallbacks {

    /* renamed from: d  reason: collision with root package name */
    public final List f1455d;

    /* renamed from: e  reason: collision with root package name */
    public final Application f1456e;

    /* renamed from: f  reason: collision with root package name */
    public final DeviceProfile f1457f;

    /* renamed from: g  reason: collision with root package name */
    public final h f1458g;

    /* renamed from: h  reason: collision with root package name */
    public final k f1459h;

    /* renamed from: i  reason: collision with root package name */
    public final OptionsPopupDialog$PopupView f1460i;

    /* renamed from: j  reason: collision with root package name */
    public final ViewGroup f1461j;

    /* renamed from: k  reason: collision with root package name */
    public final WallpaperCarouselView f1462k;

    /* renamed from: l  reason: collision with root package name */
    public final int f1463l;

    /* renamed from: m  reason: collision with root package name */
    public final j f1464m;

    /* renamed from: n  reason: collision with root package name */
    public Launcher f1465n;

    /* renamed from: o  reason: collision with root package name */
    public final E f1466o;

    /* renamed from: p  reason: collision with root package name */
    public final RunnableC0075e f1467p;

    public l(NexusLauncherActivity nexusLauncherActivity, List list) {
        super(nexusLauncherActivity.getApplication().createWindowContext(nexusLauncherActivity.getDisplay(), 2038, null), Themes.getActivityThemeRes(nexusLauncherActivity));
        this.f1455d = new ArrayList();
        this.f1456e = nexusLauncherActivity.getApplication();
        DeviceProfile deviceProfile = nexusLauncherActivity.getDeviceProfile();
        this.f1457f = deviceProfile;
        this.f1465n = nexusLauncherActivity;
        h hVar = new h(this, this);
        this.f1458g = hVar;
        hVar.setOnShowListener(this);
        hVar.setOnDismissListener(this);
        Window window = hVar.getWindow();
        window.requestFeature(1);
        window.setBackgroundDrawableResource(17170445);
        window.getDecorView().setSystemUiVisibility(1792);
        window.setLayout(-1, -1);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.type = 2038;
        attributes.flags &= -3;
        j jVar = new j(this);
        this.f1464m = jVar;
        jVar.setInsets(deviceProfile.getInsets());
        hVar.setContentView(jVar);
        OptionsPopupDialog$PopupView optionsPopupDialog$PopupView = (OptionsPopupDialog$PopupView) getLayoutInflater().inflate(R.layout.wallpaper_options_popup, (ViewGroup) jVar, false);
        this.f1460i = optionsPopupDialog$PopupView;
        optionsPopupDialog$PopupView.addOnCloseCallback(new RunnableC0073c(hVar, 0));
        this.f1461j = (ViewGroup) optionsPopupDialog$PopupView.findViewById(R.id.wallpaper_container);
        final WallpaperCarouselView wallpaperCarouselView = (WallpaperCarouselView) optionsPopupDialog$PopupView.findViewById(R.id.wallpaper_carousel);
        this.f1462k = wallpaperCarouselView;
        wallpaperCarouselView.getClass();
        u uVar = new u(wallpaperCarouselView);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final m mVar = (m) it.next();
            final w wVar = new w(wallpaperCarouselView.getContext(), mVar);
            wVar.setOutlineProvider(uVar);
            wVar.setClipToOutline(true);
            TypedArray obtainStyledAttributes = wallpaperCarouselView.getContext().obtainStyledAttributes(new int[]{16843534});
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            wVar.setForeground(drawable);
            wVar.setContentDescription(mVar.contentDescription);
            LooperExecutor looperExecutor = Executors.UI_HELPER_EXECUTOR;
            HandlerRunnable handlerRunnable = new HandlerRunnable(looperExecutor.getHandler(), new Supplier() { // from class: O1.o
                @Override // java.util.function.Supplier
                public final Object get() {
                    WallpaperCarouselView wallpaperCarouselView2 = WallpaperCarouselView.this;
                    m mVar2 = mVar;
                    n nVar = wallpaperCarouselView2.f7339g;
                    nVar.getClass();
                    Bitmap bitmap = null;
                    try {
                        ParcelFileDescriptor openFile = nVar.f1475a.getContentResolver().openFile(n.f1472b.buildUpon().appendPath("thumb").appendPath(mVar2.f1468d).build(), "r", null);
                        if (openFile == null) {
                            Log.e("WallpaperApiWrapper", "Error getting wallpaper preview: " + mVar2.f1468d);
                            if (openFile != null) {
                                openFile.close();
                            }
                        } else {
                            Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(openFile.getFileDescriptor());
                            openFile.close();
                            bitmap = decodeFileDescriptor;
                        }
                    } catch (IOException e4) {
                        Log.e("WallpaperApiWrapper", "Error getting wallpaper preview: " + mVar2.f1468d, e4);
                    }
                    return bitmap;
                }
            }, Executors.MAIN_EXECUTOR, new Consumer() { // from class: O1.p
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    WallpaperCarouselView wallpaperCarouselView2 = WallpaperCarouselView.this;
                    w wVar2 = wVar;
                    Bitmap bitmap = (Bitmap) obj;
                    int i4 = WallpaperCarouselView.f7335n;
                    if (bitmap == null) {
                        wallpaperCarouselView2.removeView(wVar2);
                        wallpaperCarouselView2.b();
                        return;
                    }
                    wallpaperCarouselView2.getClass();
                    wVar2.f1496k = bitmap;
                    wVar2.invalidate();
                    ObjectAnimator.ofInt(wVar2, w.f1488o, 0, 255).setDuration(wVar2.getResources().getInteger(17694721)).start();
                    LooperExecutor looperExecutor2 = Executors.UI_HELPER_EXECUTOR;
                    HandlerRunnable handlerRunnable2 = new HandlerRunnable(looperExecutor2.getHandler(), new s(wVar2, 1), Executors.MAIN_EXECUTOR, new t(wVar2, 1));
                    wVar2.f1499n = new q(1, handlerRunnable2);
                    looperExecutor2.execute(handlerRunnable2);
                }
            });
            wallpaperCarouselView.f7336d.add(new q(0, handlerRunnable));
            wallpaperCarouselView.addView(wVar);
            looperExecutor.execute(handlerRunnable);
            wVar.setOnClickListener(new View.OnClickListener() { // from class: O1.r
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WallpaperCarouselView wallpaperCarouselView2 = WallpaperCarouselView.this;
                    int i4 = WallpaperCarouselView.f7335n;
                    wallpaperCarouselView2.getClass();
                    w wVar2 = (w) view;
                    ((ActivityContext) ActivityContext.lookupContext(wallpaperCarouselView2.getContext())).getStatsLogManager().logger().withItemInfo(wVar2.f1494i).log(NexusLauncherEvent.LAUNCHER_GOOGLE_RECENT_WALLPAPER_TAP);
                    w wVar3 = wallpaperCarouselView2.f7342j;
                    if (wVar2 == wVar3) {
                        return;
                    }
                    w.a(wVar3, 0);
                    wallpaperCarouselView2.f7342j = wVar2;
                    w.a(wVar2, 1);
                    wallpaperCarouselView2.b();
                    if (wallpaperCarouselView2.f7343k == null) {
                        wallpaperCarouselView2.a();
                    }
                }
            });
        }
        if (wallpaperCarouselView.getChildCount() <= 0) {
            wallpaperCarouselView.setVisibility(8);
        } else {
            w wVar2 = (w) wallpaperCarouselView.getChildAt(0);
            wallpaperCarouselView.f7342j = wVar2;
            w.a(wVar2, 2);
            wallpaperCarouselView.f7341i = wallpaperCarouselView.f7342j;
            wallpaperCarouselView.b();
        }
        this.f1462k.f7345m = new Consumer() { // from class: O1.d
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                l lVar = l.this;
                if (((Boolean) obj).booleanValue()) {
                    lVar.f1464m.postDelayed(lVar.f1467p, lVar.f1462k.f7341i.f1494i.f1471g != null ? 1250 : 750);
                    return;
                }
                lVar.getClass();
                AbstractFloatingView.closeOpenContainer(lVar, 128);
                Snackbar.show(lVar, (int) R.string.set_wallpaper_error_message, -1, (Runnable) null, (Runnable) null);
                E e4 = lVar.f1466o;
                if (e4.f1437d) {
                    e4.f1437d = false;
                    D d4 = e4.f1438e;
                    if (d4 != null) {
                        e4.f1435b.removeView(d4);
                        e4.f1438e = null;
                    }
                }
            }
        };
        this.f1463l = Math.min(getResources().getDimensionPixelSize(R.dimen.options_popup_dialog_width), this.f1465n.getDeviceProfile().availableWidthPx);
        this.f1459h = new k(this, this);
        this.f1466o = new E(this);
        this.f1467p = new RunnableC0075e(0, this);
    }

    public final void a() {
        if (this.f1461j.getChildCount() > 1) {
            this.f1461j.removeViewAt(1);
        }
        if (this.f1460i.getChildCount() > 1) {
            OptionsPopupDialog$PopupView optionsPopupDialog$PopupView = this.f1460i;
            optionsPopupDialog$PopupView.removeViewsInLayout(1, optionsPopupDialog$PopupView.getChildCount() - 1);
        }
        LayoutInflater from = LayoutInflater.from(this.f1460i.getContext());
        ArrayList options = OptionsPopupView.getOptions(this.f1465n);
        int i4 = 0;
        while (i4 < options.size()) {
            final OptionsPopupView.OptionItem optionItem = (OptionsPopupView.OptionItem) options.get(i4);
            ViewGroup viewGroup = i4 == 0 ? this.f1461j : this.f1460i;
            DeepShortcutView deepShortcutView = (DeepShortcutView) from.inflate(R.layout.wallpaper_options_popup_item, viewGroup, false);
            viewGroup.addView(deepShortcutView);
            deepShortcutView.getIconView().setBackgroundDrawable(optionItem.icon);
            deepShortcutView.getBubbleText().setText(optionItem.label);
            deepShortcutView.setOnLongClickListener(new View.OnLongClickListener() { // from class: O1.f
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    return l.this.b(view, optionItem);
                }
            });
            deepShortcutView.setOnClickListener(new View.OnClickListener() { // from class: O1.g
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    l.this.b(view, optionItem);
                }
            });
            deepShortcutView.getLayoutParams().width = this.f1463l;
            i4++;
        }
    }

    public final boolean b(View view, OptionsPopupView.OptionItem optionItem) {
        if (this.f1465n == null) {
            return false;
        }
        if (optionItem.eventId.getId() > 0) {
            this.f1465n.getStatsLogManager().logger().log(optionItem.eventId);
        }
        Rect rect = new Rect();
        this.f1464m.getViewRectRelativeToSelf(view, rect);
        i iVar = new i(this.f1465n, rect);
        iVar.setLeftTopRightBottom(rect.left, rect.top, rect.right, rect.bottom);
        if (optionItem.clickListener.onLongClick(iVar)) {
            h hVar = this.f1458g;
            Objects.requireNonNull(hVar);
            view.post(new RunnableC0073c(hVar, 1));
            return true;
        }
        return false;
    }

    public final boolean c() {
        if (this.f1465n.isChangingConfigurations()) {
            if (this.f1465n.getChangingConfigurations() != Integer.MIN_VALUE) {
                if (!(this.f1465n.getThemeResId() != Themes.getActivityThemeRes(this.f1465n))) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DeviceProfile getDeviceProfile() {
        return this.f1457f;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final BaseDragLayer getDragLayer() {
        return this.f1464m;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final List getOnDeviceProfileChangeListeners() {
        return this.f1455d;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final StatsLogManager getStatsLogManager() {
        return (StatsLogManager) Optional.ofNullable(this.f1465n).map(new C0071a()).orElseGet(new Supplier() { // from class: O1.b
            @Override // java.util.function.Supplier
            public final Object get() {
                l lVar = l.this;
                lVar.getClass();
                return StatsLogManager.newInstance(lVar);
            }
        });
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity instanceof Launcher) {
            this.f1465n = (Launcher) activity;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (activity == this.f1465n) {
            if (!c()) {
                this.f1458g.dismiss();
            }
            this.f1465n = null;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPostCreated(Activity activity, Bundle bundle) {
        if (!(activity instanceof Launcher) || bundle == null) {
            return;
        }
        if (bundle.getBoolean(":options_popup_dialog:popup_open")) {
            k.a(this.f1459h);
        }
        if (bundle.getBoolean(":options_popup_dialog:wallpaper_loaded")) {
            this.f1464m.postDelayed(this.f1467p, this.f1462k.f7341i.f1494i.f1471g != null ? 1250 : 750);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        if (activity == this.f1465n && c()) {
            bundle.putBoolean(":options_popup_dialog:popup_open", true);
            Handler handler = this.f1464m.getHandler();
            if (handler == null || !handler.hasCallbacks(this.f1467p)) {
                return;
            }
            this.f1464m.removeCallbacks(this.f1467p);
            bundle.putBoolean(":options_popup_dialog:wallpaper_loaded", true);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        if (activity != this.f1465n || c()) {
            return;
        }
        this.f1458g.dismiss();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f1456e.unregisterActivityLifecycleCallbacks(this);
        this.f1459h.close(false);
        AccessibilityManagerCompat.sendStateEventToTest(0, this);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public final void onShow(DialogInterface dialogInterface) {
        k.a(this.f1459h);
    }
}
