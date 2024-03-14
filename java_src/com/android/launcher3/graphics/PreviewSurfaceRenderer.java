package com.android.launcher3.graphics;

import K0.g;
import android.app.WallpaperColors;
import android.content.Context;
import android.database.Cursor;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import android.util.Size;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.SurfaceControlViewHost;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.graphics.LauncherPreviewRenderer;
import com.android.launcher3.graphics.PreviewSurfaceRenderer;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.GridSizeMigrationUtil;
import com.android.launcher3.model.LauncherBinder;
import com.android.launcher3.model.LoaderTask;
import com.android.launcher3.model.ModelDelegate;
import com.android.launcher3.provider.LauncherDbUtils;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.Themes;
import com.android.launcher3.widget.LocalColorExtractor;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class PreviewSurfaceRenderer {
    private Context mContext;
    private boolean mDestroyed;
    private final Display mDisplay;
    private String mGridName;
    private final int mHeight;
    private boolean mHideQsb;
    private final IBinder mHostToken;
    private final RunnableList mOnDestroyCallbacks;
    private LauncherPreviewRenderer mRenderer;
    private final SurfaceControlViewHost mSurfaceControlViewHost;
    private final WallpaperColors mWallpaperColors;
    private final int mWidth;

    /* renamed from: com.android.launcher3.graphics.PreviewSurfaceRenderer$1 */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends LoaderTask {
        final /* synthetic */ InvariantDeviceProfile val$idp;
        final /* synthetic */ LauncherPreviewRenderer.PreviewContext val$previewContext;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LauncherAppState launcherAppState, BgDataModel bgDataModel, ModelDelegate modelDelegate, LauncherBinder launcherBinder, InvariantDeviceProfile invariantDeviceProfile, LauncherPreviewRenderer.PreviewContext previewContext) {
            super(launcherAppState, null, bgDataModel, modelDelegate, launcherBinder);
            PreviewSurfaceRenderer.this = r7;
            this.val$idp = invariantDeviceProfile;
            this.val$previewContext = previewContext;
        }

        public static /* synthetic */ void b(AnonymousClass1 anonymousClass1, LauncherPreviewRenderer.PreviewContext previewContext, SparseArray sparseArray, InvariantDeviceProfile invariantDeviceProfile) {
            PreviewSurfaceRenderer.this.renderView(previewContext, anonymousClass1.mBgDataModel, anonymousClass1.mWidgetProvidersMap, sparseArray, invariantDeviceProfile);
            RunnableList runnableList = PreviewSurfaceRenderer.this.mOnDestroyCallbacks;
            Objects.requireNonNull(previewContext);
            runnableList.add(new g(2, previewContext));
        }

        @Override // com.android.launcher3.model.LoaderTask, java.lang.Runnable
        public final void run() {
            loadWorkspace(new ArrayList(), this.val$idp.getDeviceProfile(this.val$previewContext).isTwoPanels ? "screen = 0 or container = -101 or screen = 1" : "screen = 0 or container = -101", null);
            PreviewSurfaceRenderer previewSurfaceRenderer = PreviewSurfaceRenderer.this;
            this.val$previewContext.getBaseContext();
            Executors.MAIN_EXECUTOR.execute(new b(this, this.val$previewContext, previewSurfaceRenderer.getLoadedLauncherWidgetInfo(), this.val$idp, 0));
        }
    }

    public PreviewSurfaceRenderer(final Context context, Bundle bundle) {
        RunnableList runnableList = new RunnableList();
        this.mOnDestroyCallbacks = runnableList;
        this.mDestroyed = false;
        this.mContext = context;
        this.mGridName = bundle.getString("name");
        bundle.remove("name");
        if (this.mGridName == null) {
            this.mGridName = InvariantDeviceProfile.getCurrentGridName(context);
        }
        this.mWallpaperColors = (WallpaperColors) bundle.getParcelable("wallpaper_colors");
        this.mHideQsb = bundle.getBoolean("hide_bottom_row");
        this.mHostToken = bundle.getBinder("host_token");
        this.mWidth = bundle.getInt("width");
        this.mHeight = bundle.getInt("height");
        this.mDisplay = ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(bundle.getInt("display_id"));
        SurfaceControlViewHost surfaceControlViewHost = (SurfaceControlViewHost) Executors.MAIN_EXECUTOR.submit(new Callable() { // from class: K0.h
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return PreviewSurfaceRenderer.c(PreviewSurfaceRenderer.this, context);
            }
        }).get(5L, TimeUnit.SECONDS);
        this.mSurfaceControlViewHost = surfaceControlViewHost;
        Objects.requireNonNull(surfaceControlViewHost);
        runnableList.add(new g(1, surfaceControlViewHost));
    }

    public static void a(PreviewSurfaceRenderer previewSurfaceRenderer) {
        final ContextThemeWrapper contextThemeWrapper;
        Context createDisplayContext = previewSurfaceRenderer.mContext.createDisplayContext(previewSurfaceRenderer.mDisplay);
        WallpaperColors wallpaperColors = previewSurfaceRenderer.mWallpaperColors;
        if (wallpaperColors == null) {
            contextThemeWrapper = new ContextThemeWrapper(createDisplayContext, Themes.getActivityThemeRes(createDisplayContext));
        } else {
            if (Utilities.ATLEAST_R) {
                createDisplayContext = createDisplayContext.createWindowContext(2038, null);
            }
            ((LocalColorExtractor) ResourceBasedOverride.Overrides.getObject(R.string.local_colors_extraction_class, createDisplayContext.getApplicationContext(), LocalColorExtractor.class)).applyColorsOverride(createDisplayContext, wallpaperColors);
            contextThemeWrapper = new ContextThemeWrapper(createDisplayContext, Themes.getActivityThemeRes(wallpaperColors.getColorHints(), createDisplayContext));
        }
        final InvariantDeviceProfile invariantDeviceProfile = new InvariantDeviceProfile(contextThemeWrapper, previewSurfaceRenderer.mGridName);
        if (!GridSizeMigrationUtil.needsToMigrate(contextThemeWrapper, invariantDeviceProfile)) {
            LauncherAppState.getInstance(contextThemeWrapper).getModel().loadAsync(new Consumer() { // from class: K0.i
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    PreviewSurfaceRenderer previewSurfaceRenderer2 = PreviewSurfaceRenderer.this;
                    Context context = contextThemeWrapper;
                    InvariantDeviceProfile invariantDeviceProfile2 = invariantDeviceProfile;
                    BgDataModel bgDataModel = (BgDataModel) obj;
                    previewSurfaceRenderer2.getClass();
                    if (bgDataModel != null) {
                        Executors.MAIN_EXECUTOR.execute(new com.android.launcher3.graphics.b(previewSurfaceRenderer2, context, bgDataModel, invariantDeviceProfile2, 1));
                    } else {
                        Log.e("PreviewSurfaceRenderer", "Model loading failed");
                    }
                }
            });
            return;
        }
        LauncherPreviewRenderer.PreviewContext previewContext = new LauncherPreviewRenderer.PreviewContext(contextThemeWrapper, invariantDeviceProfile);
        LauncherDbUtils.copyTable(LauncherAppState.getInstance(previewSurfaceRenderer.mContext).getModel().getModelDbController().getDb(), LauncherAppState.getInstance(previewContext).getModel().getModelDbController().getDb(), "favorites", previewSurfaceRenderer.mContext);
        LauncherAppState.getInstance(previewContext).getModel().getModelDbController().clearEmptyDbFlag();
        BgDataModel bgDataModel = new BgDataModel();
        new AnonymousClass1(LauncherAppState.getInstance(previewContext), bgDataModel, LauncherAppState.getInstance(previewContext).getModel().getModelDelegate(), new LauncherBinder(LauncherAppState.getInstance(previewContext), bgDataModel, null, new BgDataModel.Callbacks[0]), invariantDeviceProfile, previewContext).run();
    }

    public static /* synthetic */ SurfaceControlViewHost c(PreviewSurfaceRenderer previewSurfaceRenderer, Context context) {
        previewSurfaceRenderer.getClass();
        return new SurfaceControlViewHost(previewSurfaceRenderer.mContext, ((DisplayManager) context.getSystemService(DisplayManager.class)).getDisplay(0), previewSurfaceRenderer.mHostToken);
    }

    public void renderView(Context context, BgDataModel bgDataModel, Map map, SparseArray sparseArray, InvariantDeviceProfile invariantDeviceProfile) {
        if (this.mDestroyed) {
            return;
        }
        LauncherPreviewRenderer launcherPreviewRenderer = new LauncherPreviewRenderer(context, invariantDeviceProfile, this.mWallpaperColors, sparseArray);
        this.mRenderer = launcherPreviewRenderer;
        launcherPreviewRenderer.hideBottomRow(this.mHideQsb);
        InsettableFrameLayout renderedView = this.mRenderer.getRenderedView(bgDataModel, map);
        float f4 = this.mWidth;
        float f5 = this.mHeight;
        float min = Math.min(f4 / renderedView.getMeasuredWidth(), f5 / renderedView.getMeasuredHeight());
        renderedView.setScaleX(min);
        renderedView.setScaleY(min);
        renderedView.setPivotX(0.0f);
        renderedView.setPivotY(0.0f);
        renderedView.setTranslationX((f4 - (renderedView.getWidth() * min)) / 2.0f);
        renderedView.setTranslationY((f5 - (min * renderedView.getHeight())) / 2.0f);
        renderedView.setAlpha(0.0f);
        renderedView.animate().alpha(1.0f).setInterpolator(new AccelerateDecelerateInterpolator()).setDuration(200L).start();
        this.mSurfaceControlViewHost.setView(renderedView, renderedView.getMeasuredWidth(), renderedView.getMeasuredHeight());
    }

    public final void destroy() {
        this.mDestroyed = true;
        this.mOnDestroyCallbacks.executeAllAndDestroy();
    }

    public final IBinder getHostToken() {
        return this.mHostToken;
    }

    public final SparseArray getLoadedLauncherWidgetInfo() {
        SparseArray sparseArray = new SparseArray();
        try {
            Cursor query = LauncherAppState.getInstance(this.mContext).getModel().getModelDbController().query("favorites", new String[]{"appWidgetId", "spanX", "spanY"}, "itemType = 4", null, null);
            int columnIndexOrThrow = query.getColumnIndexOrThrow("appWidgetId");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("spanX");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("spanY");
            while (query.moveToNext()) {
                sparseArray.append(query.getInt(columnIndexOrThrow), new Size(query.getInt(columnIndexOrThrow2), query.getInt(columnIndexOrThrow3)));
            }
            query.close();
            return sparseArray;
        } catch (Exception e4) {
            Log.e("PreviewSurfaceRenderer", "Error querying for launcher widget info", e4);
            return null;
        }
    }

    public final SurfaceControlViewHost.SurfacePackage getSurfacePackage() {
        return this.mSurfaceControlViewHost.getSurfacePackage();
    }

    public final void hideBottomRow(boolean z4) {
        LauncherPreviewRenderer launcherPreviewRenderer = this.mRenderer;
        if (launcherPreviewRenderer != null) {
            launcherPreviewRenderer.hideBottomRow(z4);
        }
    }
}
