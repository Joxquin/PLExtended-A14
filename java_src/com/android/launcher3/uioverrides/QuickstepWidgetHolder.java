package com.android.launcher3.uioverrides;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.util.Log;
import android.util.SparseArray;
import android.widget.RemoteViews;
import b1.q;
import b1.s;
import b1.t;
import com.android.launcher3.K;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.uioverrides.QuickstepWidgetHolder;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.LauncherWidgetHolder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
/* loaded from: classes.dex */
public final class QuickstepWidgetHolder extends LauncherWidgetHolder {

    /* renamed from: a */
    public static final /* synthetic */ int f5228a = 0;
    private final IntConsumer mAppWidgetRemovedCallback;
    private final RemoteViews.InteractionHandler mInteractionHandler;
    private final SparseArray mPendingUpdateMap;
    private final ArrayList mProviderChangedListeners;
    private final SparseArray mViews;
    private static final c KEY_PROVIDER_UPDATE = new c(0);
    private static final c KEY_VIEWS_UPDATE = new c(1);
    private static final c KEY_VIEW_DATA_CHANGED = new c(2);
    private static final List sHolders = new ArrayList();
    private static final SparseArray sListeners = new SparseArray();
    private static AppWidgetHost sWidgetHost = null;

    /* loaded from: classes.dex */
    public final class PendingUpdate {
        public final IntSet changedViews;
        public AppWidgetProviderInfo providerInfo;
        public RemoteViews remoteViews;

        public /* synthetic */ PendingUpdate(int i4) {
            this();
        }

        private PendingUpdate() {
            this.changedViews = new IntSet();
        }
    }

    /* loaded from: classes.dex */
    public class QuickstepHolderFactory extends LauncherWidgetHolder.HolderFactory {

        /* renamed from: com.android.launcher3.uioverrides.QuickstepWidgetHolder$QuickstepHolderFactory$1 */
        /* loaded from: classes.dex */
        final class AnonymousClass1 extends LauncherWidgetHolder {
            final /* synthetic */ RemoteViews.InteractionHandler val$interactionHandler;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(Context context, IntConsumer intConsumer, RemoteViews.InteractionHandler interactionHandler) {
                super(context, intConsumer);
                this.val$interactionHandler = interactionHandler;
            }

            @Override // com.android.launcher3.widget.LauncherWidgetHolder
            public final AppWidgetHost createHost(Context context, IntConsumer intConsumer) {
                AppWidgetHost createHost = super.createHost(context, intConsumer);
                createHost.setInteractionHandler(this.val$interactionHandler);
                return createHost;
            }
        }

        public QuickstepHolderFactory(Context context) {
        }

        @Override // com.android.launcher3.widget.LauncherWidgetHolder.HolderFactory
        public final LauncherWidgetHolder newInstance(Context context, K k4) {
            return !FeatureFlags.ENABLE_WIDGET_HOST_IN_BACKGROUND.get() ? new AnonymousClass1(context, k4, null) : new QuickstepWidgetHolder(context, k4, null);
        }
    }

    /* loaded from: classes.dex */
    public final class QuickstepWidgetHolderListener implements AppWidgetHost.AppWidgetHostListener {
        private final Set mListeningHolders = Collections.newSetFromMap(new WeakHashMap());
        private RemoteViews mRemoteViews;
        private final int mWidgetId;

        public QuickstepWidgetHolderListener(int i4) {
            this.mWidgetId = i4;
        }

        public final RemoteViews addHolder(QuickstepWidgetHolder quickstepWidgetHolder) {
            this.mListeningHolders.add(quickstepWidgetHolder);
            return this.mRemoteViews;
        }

        public final void onUpdateProviderInfo(AppWidgetProviderInfo appWidgetProviderInfo) {
            this.mRemoteViews = null;
            Executors.MAIN_EXECUTOR.execute(new d(this, QuickstepWidgetHolder.KEY_PROVIDER_UPDATE, appWidgetProviderInfo));
        }

        public final void onViewDataChanged(int i4) {
            Executors.MAIN_EXECUTOR.execute(new d(this, QuickstepWidgetHolder.KEY_VIEW_DATA_CHANGED, Integer.valueOf(i4)));
        }

        public final void updateAppWidget(RemoteViews remoteViews) {
            this.mRemoteViews = remoteViews;
            Executors.MAIN_EXECUTOR.execute(new d(this, QuickstepWidgetHolder.KEY_VIEWS_UPDATE, this.mRemoteViews));
        }
    }

    /* loaded from: classes.dex */
    public interface UpdateKey extends BiConsumer {
    }

    public QuickstepWidgetHolder(Context context, IntConsumer intConsumer, RemoteViews.InteractionHandler interactionHandler) {
        super(context, intConsumer);
        this.mViews = new SparseArray();
        this.mProviderChangedListeners = new ArrayList();
        this.mPendingUpdateMap = new SparseArray();
        this.mAppWidgetRemovedCallback = intConsumer == null ? new q(0) : intConsumer;
        this.mInteractionHandler = interactionHandler;
        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: b1.r
            @Override // java.lang.Runnable
            public final void run() {
                QuickstepWidgetHolder.e(QuickstepWidgetHolder.this);
            }
        });
    }

    public static /* synthetic */ Boolean d(QuickstepWidgetHolder quickstepWidgetHolder) {
        quickstepWidgetHolder.getClass();
        return Boolean.valueOf(((ArrayList) sHolders).remove(quickstepWidgetHolder));
    }

    public static /* synthetic */ void e(QuickstepWidgetHolder quickstepWidgetHolder) {
        quickstepWidgetHolder.getClass();
        ((ArrayList) sHolders).add(quickstepWidgetHolder);
    }

    public static void j(QuickstepWidgetHolder quickstepWidgetHolder, int i4, UpdateKey updateKey, Object obj) {
        if (quickstepWidgetHolder.isListening()) {
            AppWidgetHostView appWidgetHostView = (AppWidgetHostView) quickstepWidgetHolder.mViews.get(i4);
            if (appWidgetHostView == null) {
                return;
            }
            ((c) updateKey).accept(appWidgetHostView, obj);
            return;
        }
        SparseArray sparseArray = quickstepWidgetHolder.mPendingUpdateMap;
        PendingUpdate pendingUpdate = (PendingUpdate) sparseArray.get(i4);
        if (pendingUpdate == null) {
            pendingUpdate = new PendingUpdate(0);
            sparseArray.put(i4, pendingUpdate);
        }
        if (KEY_PROVIDER_UPDATE.equals(updateKey)) {
            pendingUpdate.providerInfo = (AppWidgetProviderInfo) obj;
            pendingUpdate.remoteViews = null;
            pendingUpdate.changedViews.clear();
        } else if (KEY_VIEWS_UPDATE.equals(updateKey)) {
            pendingUpdate.remoteViews = (RemoteViews) obj;
        } else if (KEY_VIEW_DATA_CHANGED.equals(updateKey)) {
            pendingUpdate.changedViews.add(((Integer) obj).intValue());
        }
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder
    public final void addProviderChangeListener(LauncherWidgetHolder.ProviderChangedListener providerChangedListener) {
        Executors.MAIN_EXECUTOR.execute(new s(this, providerChangedListener, 0));
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder
    public final void clearViews() {
        this.mViews.clear();
        SparseArray sparseArray = sListeners;
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            ((QuickstepWidgetHolderListener) sparseArray.valueAt(size)).mListeningHolders.remove(this);
        }
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder
    public final AppWidgetHost createHost(Context context, IntConsumer intConsumer) {
        if (sWidgetHost == null) {
            QuickstepAppWidgetHost quickstepAppWidgetHost = new QuickstepAppWidgetHost(context.getApplicationContext(), new q(1), new t(), Executors.UI_HELPER_EXECUTOR.getLooper());
            sWidgetHost = quickstepAppWidgetHost;
            quickstepAppWidgetHost.startListening();
        }
        return sWidgetHost;
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder
    public final AppWidgetHostView createView(Context context, int i4, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        LauncherAppWidgetHostView pendingView = getPendingView(i4);
        if (pendingView != null) {
            removePendingView(i4);
        } else {
            pendingView = new LauncherAppWidgetHostView(context);
        }
        pendingView.setIsWidgetCachingDisabled();
        pendingView.setInteractionHandler(this.mInteractionHandler);
        pendingView.setAppWidget(i4, launcherAppWidgetProviderInfo);
        this.mViews.put(i4, pendingView);
        SparseArray sparseArray = sListeners;
        QuickstepWidgetHolderListener quickstepWidgetHolderListener = (QuickstepWidgetHolderListener) sparseArray.get(i4);
        if (quickstepWidgetHolderListener == null) {
            quickstepWidgetHolderListener = new QuickstepWidgetHolderListener(i4);
            sWidgetHost.setListener(i4, quickstepWidgetHolderListener);
            sparseArray.put(i4, quickstepWidgetHolderListener);
        }
        pendingView.updateAppWidget(quickstepWidgetHolderListener.addHolder(this));
        return pendingView;
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder
    public final void deleteAppWidgetId(int i4) {
        super.deleteAppWidgetId(i4);
        this.mViews.remove(i4);
        sListeners.remove(i4);
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder
    public final void destroy() {
        try {
            Executors.MAIN_EXECUTOR.submit(new Callable() { // from class: b1.p
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return QuickstepWidgetHolder.d(QuickstepWidgetHolder.this);
                }
            }).get();
        } catch (Exception e4) {
            Log.e("QuickstepWidgetHolder", "Failed to remove self from holder list", e4);
        }
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder
    public final void removeProviderChangeListener(LauncherWidgetHolder.ProviderChangedListener providerChangedListener) {
        Executors.MAIN_EXECUTOR.execute(new s(this, providerChangedListener, 1));
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder
    public final boolean shouldListen(int i4) {
        return (i4 & 6) == 6;
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder
    public final void stopListening() {
        sWidgetHost.setAppWidgetHidden();
        setListeningFlag(false);
    }

    @Override // com.android.launcher3.widget.LauncherWidgetHolder
    public final void updateDeferredView() {
        PendingUpdate pendingUpdate;
        super.updateDeferredView();
        SparseArray sparseArray = this.mPendingUpdateMap;
        int size = sparseArray.size();
        for (int i4 = 0; i4 < size; i4++) {
            final AppWidgetHostView appWidgetHostView = (AppWidgetHostView) this.mViews.get(sparseArray.keyAt(i4));
            if (appWidgetHostView != null && (pendingUpdate = (PendingUpdate) sparseArray.valueAt(i4)) != null) {
                AppWidgetProviderInfo appWidgetProviderInfo = pendingUpdate.providerInfo;
                if (appWidgetProviderInfo != null) {
                    KEY_PROVIDER_UPDATE.accept(appWidgetHostView, appWidgetProviderInfo);
                }
                RemoteViews remoteViews = pendingUpdate.remoteViews;
                if (remoteViews != null) {
                    KEY_VIEWS_UPDATE.accept(appWidgetHostView, remoteViews);
                }
                pendingUpdate.changedViews.forEach(new Consumer() { // from class: b1.n
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        QuickstepWidgetHolder.KEY_VIEW_DATA_CHANGED.accept(appWidgetHostView, (Integer) obj);
                    }
                });
            }
        }
        sparseArray.clear();
    }
}
