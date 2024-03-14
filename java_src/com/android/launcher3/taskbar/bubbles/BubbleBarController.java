package com.android.launcher3.taskbar.bubbles;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.InsetDrawable;
import android.os.Bundle;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.util.ArrayMap;
import android.util.Log;
import android.util.PathParser;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.internal.graphics.ColorUtils;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.BubbleIconFactory;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.taskbar.bubbles.BubbleBarController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.R;
import com.android.wm.shell.bubbles.IBubblesListener;
import f.C0832a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class BubbleBarController extends IBubblesListener.Stub {
    public static final boolean BUBBLE_BAR_ENABLED = SystemProperties.getBoolean("persist.wm.debug.bubble_bar", false);
    private static final Executor BUBBLE_STATE_EXECUTOR = Executors.newSingleThreadExecutor(new Executors.SimpleThreadFactory("BubbleStateUpdates-"));
    private final BubbleBarView mBarView;
    private BubbleBarViewController mBubbleBarViewController;
    private BubbleStashController mBubbleStashController;
    private BubbleStashedHandleViewController mBubbleStashedHandleViewController;
    private final ArrayMap mBubbles = new ArrayMap();
    private final Context mContext;
    private final BubbleIconFactory mIconFactory;
    private final LauncherApps mLauncherApps;
    private final LooperExecutor mMainExecutor;
    private BubbleBarOverflow mOverflowBubble;
    private BubbleBarItem mSelectedBubble;
    private final SystemUiProxy mSystemUiProxy;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class BubbleBarViewUpdate {
        BubbleBarBubble addedBubble;
        List bubbleKeysInOrder;
        List currentBubbles;
        boolean expanded;
        boolean expandedChanged;
        List removedBubbles;
        String selectedBubbleKey;
        BubbleBarBubble updatedBubble;

        public BubbleBarViewUpdate(com.android.wm.shell.common.bubbles.b bVar) {
            this.expandedChanged = bVar.f6303d;
            this.expanded = bVar.f6304e;
            this.selectedBubbleKey = bVar.f6305f;
            this.removedBubbles = bVar.f6310k;
            this.bubbleKeysInOrder = bVar.f6311l;
        }
    }

    public BubbleBarController(Context context, BubbleBarView bubbleBarView) {
        this.mContext = context;
        this.mBarView = bubbleBarView;
        SystemUiProxy systemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.get(context);
        this.mSystemUiProxy = systemUiProxy;
        if (BUBBLE_BAR_ENABLED) {
            systemUiProxy.setBubblesListener(this);
        }
        this.mMainExecutor = com.android.launcher3.util.Executors.MAIN_EXECUTOR;
        this.mLauncherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
        this.mIconFactory = new BubbleIconFactory(context, context.getResources().getDimensionPixelSize(R.dimen.bubblebar_icon_size), context.getResources().getDimensionPixelSize(R.dimen.bubblebar_badge_size), context.getResources().getColor(R.color.important_conversation), context.getResources().getDimensionPixelSize(17105269));
    }

    public static /* synthetic */ void a(BubbleBarController bubbleBarController, BubbleBarOverflow bubbleBarOverflow) {
        if (bubbleBarController.mOverflowBubble == null) {
            bubbleBarController.mBubbleBarViewController.addBubble(bubbleBarOverflow);
            bubbleBarController.mOverflowBubble = bubbleBarOverflow;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyViewChanges(com.android.launcher3.taskbar.bubbles.BubbleBarController.BubbleBarViewUpdate r11) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.taskbar.bubbles.BubbleBarController.applyViewChanges(com.android.launcher3.taskbar.bubbles.BubbleBarController$BubbleBarViewUpdate):void");
    }

    public static void c(BubbleBarController bubbleBarController, com.android.wm.shell.common.bubbles.b bVar, BubbleBarViewUpdate bubbleBarViewUpdate) {
        if (bubbleBarController.mOverflowBubble == null) {
            Context context = bubbleBarController.mContext;
            Drawable a4 = C0832a.a(R.drawable.bubble_ic_overflow_button, context);
            TypedArray obtainStyledAttributes = bubbleBarController.mContext.obtainStyledAttributes(new int[]{17957012, 17957029});
            int color = obtainStyledAttributes.getColor(0, -1);
            int color2 = obtainStyledAttributes.getColor(1, -16777216);
            obtainStyledAttributes.recycle();
            a4.setTint(color);
            BitmapInfo createBadgedIconBitmap = bubbleBarController.mIconFactory.createBadgedIconBitmap(new AdaptiveIconDrawable(new ColorDrawable(color2), new InsetDrawable(a4, context.getResources().getDimensionPixelSize(R.dimen.bubblebar_overflow_inset))), null);
            BubbleView bubbleView = (BubbleView) LayoutInflater.from(context).inflate(R.layout.bubblebar_item_view, (ViewGroup) bubbleBarController.mBarView, false);
            BubbleBarOverflow bubbleBarOverflow = new BubbleBarOverflow(bubbleView);
            bubbleView.setOverflow(bubbleBarOverflow, createBadgedIconBitmap.icon);
            bubbleBarController.mMainExecutor.execute(new b(bubbleBarController, bubbleBarOverflow, 3));
        }
        com.android.wm.shell.common.bubbles.d dVar = bVar.f6306g;
        if (dVar != null) {
            bubbleBarViewUpdate.addedBubble = bubbleBarController.populateBubble(bubbleBarController.mContext, dVar, bubbleBarController.mBarView, null);
        }
        com.android.wm.shell.common.bubbles.d dVar2 = bVar.f6307h;
        if (dVar2 != null) {
            bubbleBarViewUpdate.updatedBubble = bubbleBarController.populateBubble(bubbleBarController.mContext, bVar.f6307h, bubbleBarController.mBarView, (BubbleBarBubble) bubbleBarController.mBubbles.get(dVar2.f6313d));
        }
        List list = bVar.f6312m;
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i4 = 0; i4 < bVar.f6312m.size(); i4++) {
                arrayList.add(bubbleBarController.populateBubble(bubbleBarController.mContext, (com.android.wm.shell.common.bubbles.d) bVar.f6312m.get(i4), bubbleBarController.mBarView, null));
            }
            bubbleBarViewUpdate.currentBubbles = arrayList;
        }
        bubbleBarController.mMainExecutor.execute(new b(bubbleBarController, bubbleBarViewUpdate, 2));
    }

    public static void d(BubbleBarController bubbleBarController, String str) {
        BubbleBarItem bubbleBarItem = (BubbleBarItem) bubbleBarController.mBubbles.get(str);
        if (Objects.equals(bubbleBarItem, bubbleBarController.mSelectedBubble)) {
            return;
        }
        bubbleBarController.mSelectedBubble = bubbleBarItem;
        bubbleBarController.mBubbleBarViewController.updateSelectedBubble(bubbleBarItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [Z0.b] */
    public static /* synthetic */ void g(final BubbleBarController bubbleBarController) {
        BubbleBarViewController bubbleBarViewController = bubbleBarController.mBubbleBarViewController;
        boolean z4 = !BUBBLE_BAR_ENABLED;
        bubbleBarViewController.setHiddenForBubbles(z4);
        bubbleBarController.mBubbleStashedHandleViewController.setHiddenForBubbles(z4);
        bubbleBarController.mBubbleBarViewController.setUpdateSelectedBubbleAfterCollapse(new Consumer() { // from class: Z0.b
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                BubbleBarController.d(BubbleBarController.this, (String) obj);
            }
        });
    }

    private BubbleBarBubble populateBubble(Context context, com.android.wm.shell.common.bubbles.d dVar, BubbleBarView bubbleBarView, BubbleBarBubble bubbleBarBubble) {
        Drawable drawable;
        boolean z4 = dVar.f6320k;
        ShortcutRequest shortcutRequest = new ShortcutRequest(context, new UserHandle(dVar.f6316g));
        shortcutRequest.forPackage(dVar.f6317h, Arrays.asList(dVar.f6315f));
        ShortcutRequest.QueryResult query = shortcutRequest.query(3089);
        ShortcutInfo shortcutInfo = query.size() > 0 ? (ShortcutInfo) query.get(0) : null;
        if (shortcutInfo == null) {
            Log.w("BubbleBarController", "No shortcutInfo found for bubble: " + dVar.f6313d + " with shortcutId: " + dVar.f6315f);
        }
        try {
            ApplicationInfo applicationInfo = this.mLauncherApps.getApplicationInfo(dVar.f6317h, 0, new UserHandle(dVar.f6316g));
            if (applicationInfo == null) {
                Log.w("BubbleBarController", "Unable to find appInfo: " + dVar.f6317h);
                return null;
            }
            PackageManager packageManager = context.getPackageManager();
            String valueOf = String.valueOf(applicationInfo.loadLabel(packageManager));
            Drawable loadUnbadgedIcon = applicationInfo.loadUnbadgedIcon(packageManager);
            Drawable userBadgedIcon = packageManager.getUserBadgedIcon(loadUnbadgedIcon, new UserHandle(dVar.f6316g));
            BubbleIconFactory bubbleIconFactory = this.mIconFactory;
            Icon icon = dVar.f6318i;
            bubbleIconFactory.getClass();
            if (shortcutInfo != null) {
                drawable = ((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcutIconDrawable(shortcutInfo, context.getResources().getConfiguration().densityDpi);
            } else if (icon != null) {
                if (icon.getType() == 4 || icon.getType() == 6) {
                    context.grantUriPermission(context.getPackageName(), icon.getUri(), 1);
                }
                drawable = icon.loadDrawable(context);
            } else {
                drawable = null;
            }
            if (drawable != null) {
                loadUnbadgedIcon = drawable;
            }
            BitmapInfo badgeBitmap = this.mIconFactory.getBadgeBitmap(userBadgedIcon, z4);
            Bitmap bitmap = badgeBitmap.icon;
            float[] fArr = new float[1];
            BubbleIconFactory bubbleIconFactory2 = this.mIconFactory;
            bubbleIconFactory2.getClass();
            Bitmap createIconBitmap = bubbleIconFactory2.createIconBitmap(bubbleIconFactory2.normalizeAndWrapToAdaptiveIcon(loadUnbadgedIcon, true, null, fArr), fArr[0], 2);
            Path createPathFromPathData = PathParser.createPathFromPathData(context.getResources().getString(17039959));
            Matrix matrix = new Matrix();
            float f4 = fArr[0];
            matrix.setScale(f4, f4, 50.0f, 50.0f);
            createPathFromPathData.transform(matrix);
            int blendARGB = ColorUtils.blendARGB(badgeBitmap.color, -1, 0.5411765f);
            if (bubbleBarBubble == null) {
                BubbleView bubbleView = (BubbleView) LayoutInflater.from(context).inflate(R.layout.bubblebar_item_view, (ViewGroup) bubbleBarView, false);
                BubbleBarBubble bubbleBarBubble2 = new BubbleBarBubble(dVar, bubbleView, bitmap, createIconBitmap, blendARGB, createPathFromPathData, valueOf);
                bubbleView.setBubble(bubbleBarBubble2);
                return bubbleBarBubble2;
            }
            bubbleBarBubble.setInfo(dVar);
            bubbleBarBubble.setBadge(bitmap);
            bubbleBarBubble.setIcon(createIconBitmap);
            bubbleBarBubble.setDotColor(blendARGB);
            bubbleBarBubble.setDotPath(createPathFromPathData);
            bubbleBarBubble.setAppName(valueOf);
            return bubbleBarBubble;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("BubbleBarController", "Unable to find packageName: " + dVar.f6317h);
            return null;
        }
    }

    public final String getSelectedBubbleKey() {
        BubbleBarItem bubbleBarItem = this.mSelectedBubble;
        if (bubbleBarItem != null) {
            return bubbleBarItem.getKey();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [Z0.a] */
    public final void init(BubbleControllers bubbleControllers) {
        this.mBubbleBarViewController = bubbleControllers.bubbleBarViewController;
        this.mBubbleStashController = bubbleControllers.bubbleStashController;
        this.mBubbleStashedHandleViewController = bubbleControllers.bubbleStashedHandleViewController;
        bubbleControllers.runAfterInit(new Runnable() { // from class: Z0.a
            @Override // java.lang.Runnable
            public final void run() {
                BubbleBarController.g(BubbleBarController.this);
            }
        });
    }

    public final void onBubbleStateChange(Bundle bundle) {
        bundle.setClassLoader(com.android.wm.shell.common.bubbles.b.class.getClassLoader());
        final com.android.wm.shell.common.bubbles.b bVar = (com.android.wm.shell.common.bubbles.b) bundle.getParcelable("update", com.android.wm.shell.common.bubbles.b.class);
        final BubbleBarViewUpdate bubbleBarViewUpdate = new BubbleBarViewUpdate(bVar);
        if (bVar.f6306g == null && bVar.f6307h == null && bVar.f6312m.isEmpty()) {
            BUBBLE_STATE_EXECUTOR.execute(new b(this, bubbleBarViewUpdate, 0));
        } else {
            BUBBLE_STATE_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.taskbar.bubbles.a
                @Override // java.lang.Runnable
                public final void run() {
                    BubbleBarController.c(BubbleBarController.this, bVar, bubbleBarViewUpdate);
                }
            });
        }
    }

    public final void onDestroy() {
        this.mSystemUiProxy.setBubblesListener(null);
    }

    public final void showAndSelectBubble(BubbleBarItem bubbleBarItem) {
        if (!Objects.equals(bubbleBarItem, this.mSelectedBubble)) {
            this.mSelectedBubble = bubbleBarItem;
            this.mBubbleBarViewController.updateSelectedBubble(bubbleBarItem);
        }
        showSelectedBubble();
    }

    public final void showSelectedBubble() {
        if (getSelectedBubbleKey() == null) {
            Log.w("BubbleBarController", "Trying to show the selected bubble but it's null");
            return;
        }
        BubbleBarItem bubbleBarItem = this.mSelectedBubble;
        if (bubbleBarItem instanceof BubbleBarBubble) {
            ((BubbleBarBubble) bubbleBarItem).getInfo().f6314e |= 2;
            this.mSelectedBubble.getView().updateDotVisibility(true);
        }
        this.mSystemUiProxy.showBubble(getSelectedBubbleKey(), ((FrameLayout.LayoutParams) this.mBarView.getLayoutParams()).getMarginEnd() + this.mBarView.getWidth(), this.mBarView.getHeight() + ((int) Math.abs(this.mBubbleStashController.getBubbleBarTranslationY())));
    }

    public final void updateStateForSysuiFlags(int i4) {
        this.mBubbleBarViewController.setHiddenForSysui((1313356 & i4) != 0);
        int i5 = i4 & 584;
        this.mBubbleStashedHandleViewController.setHiddenForSysui(i5 != 0);
        this.mBubbleStashController.onSysuiLockedStateChange(i5 != 0);
    }
}
