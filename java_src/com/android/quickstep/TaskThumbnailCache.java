package com.android.quickstep;

import android.content.Context;
import android.content.res.Resources;
import com.android.quickstep.util.CancellableTask;
import com.android.quickstep.util.TaskKeyLruCache;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class TaskThumbnailCache {
    private final Executor mBgExecutor;
    private final TaskKeyLruCache mCache;
    private final int mCacheSize;
    private final boolean mEnableTaskSnapshotPreloading;
    private final HighResLoadingState mHighResLoadingState;

    /* loaded from: classes.dex */
    public class HighResLoadingState {
        private ArrayList mCallbacks;
        private boolean mFlingingFast;
        private boolean mForceHighResThumbnails;
        private boolean mHighResLoadingEnabled;
        private boolean mVisible;

        /* loaded from: classes.dex */
        public interface HighResLoadingStateChangedCallback {
            void onHighResLoadingStateChanged(boolean z4);
        }

        public /* synthetic */ HighResLoadingState(Context context, int i4) {
            this(context);
        }

        private void updateState() {
            boolean z4 = this.mHighResLoadingEnabled;
            boolean z5 = this.mForceHighResThumbnails || (this.mVisible && !this.mFlingingFast);
            this.mHighResLoadingEnabled = z5;
            if (z4 != z5) {
                for (int size = this.mCallbacks.size() - 1; size >= 0; size--) {
                    ((HighResLoadingStateChangedCallback) this.mCallbacks.get(size)).onHighResLoadingStateChanged(this.mHighResLoadingEnabled);
                }
            }
        }

        public void addCallback(HighResLoadingStateChangedCallback highResLoadingStateChangedCallback) {
            this.mCallbacks.add(highResLoadingStateChangedCallback);
        }

        public boolean isEnabled() {
            return this.mHighResLoadingEnabled;
        }

        public void removeCallback(HighResLoadingStateChangedCallback highResLoadingStateChangedCallback) {
            this.mCallbacks.remove(highResLoadingStateChangedCallback);
        }

        public void setFlingingFast(boolean z4) {
            this.mFlingingFast = z4;
            updateState();
        }

        public void setVisible(boolean z4) {
            this.mVisible = z4;
            updateState();
        }

        private HighResLoadingState(Context context) {
            this.mCallbacks = new ArrayList();
            this.mForceHighResThumbnails = !TaskThumbnailCache.d();
        }
    }

    public TaskThumbnailCache(Context context, Executor executor) {
        this.mBgExecutor = executor;
        this.mHighResLoadingState = new HighResLoadingState(context, 0);
        Resources resources = context.getResources();
        int integer = resources.getInteger(R.integer.recentsThumbnailCacheSize);
        this.mCacheSize = integer;
        this.mEnableTaskSnapshotPreloading = resources.getBoolean(R.bool.config_enableTaskSnapshotPreloading);
        this.mCache = new TaskKeyLruCache(integer);
    }

    public static /* bridge */ /* synthetic */ boolean d() {
        return supportsLowResThumbnails();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$updateThumbnailInBackground$1(Task task, Consumer consumer, ThumbnailData thumbnailData) {
        task.thumbnail = thumbnailData;
        consumer.accept(thumbnailData);
    }

    private static boolean supportsLowResThumbnails() {
        Resources system = Resources.getSystem();
        int identifier = system.getIdentifier("config_lowResTaskSnapshotScale", "dimen", "android");
        return identifier == 0 || 0.0f < system.getFloat(identifier);
    }

    public void clear() {
        this.mCache.evictAll();
    }

    public int getCacheSize() {
        return this.mCacheSize;
    }

    public HighResLoadingState getHighResLoadingState() {
        return this.mHighResLoadingState;
    }

    public boolean isPreloadingEnabled() {
        return this.mEnableTaskSnapshotPreloading && this.mHighResLoadingState.mVisible;
    }

    public void remove(Task.TaskKey taskKey) {
        this.mCache.remove(taskKey);
    }

    public void updateTaskSnapShot(int i4, ThumbnailData thumbnailData) {
        this.mCache.updateIfAlreadyInCache(i4, thumbnailData);
    }

    public CancellableTask updateThumbnailInBackground(final Task task, final Consumer consumer) {
        boolean z4 = !this.mHighResLoadingState.isEnabled();
        ThumbnailData thumbnailData = task.thumbnail;
        if (thumbnailData != null && thumbnailData.thumbnail != null && (!thumbnailData.reducedResolution || z4)) {
            consumer.accept(thumbnailData);
            return null;
        }
        return updateThumbnailInBackground(task.key, !this.mHighResLoadingState.isEnabled(), new Consumer() { // from class: com.android.quickstep.u1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TaskThumbnailCache.lambda$updateThumbnailInBackground$1(Task.this, consumer, (ThumbnailData) obj);
            }
        });
    }

    public void updateThumbnailInCache(final Task task) {
        if (task != null && task.thumbnail == null) {
            updateThumbnailInBackground(task.key, true, new Consumer() { // from class: com.android.quickstep.v1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Task.this.thumbnail = (ThumbnailData) obj;
                }
            });
        }
    }

    private CancellableTask updateThumbnailInBackground(final Task.TaskKey taskKey, final boolean z4, final Consumer consumer) {
        ThumbnailData thumbnailData = (ThumbnailData) this.mCache.getAndInvalidateIfModified(taskKey);
        if (thumbnailData != null && thumbnailData.thumbnail != null && (!thumbnailData.reducedResolution || z4)) {
            consumer.accept(thumbnailData);
            return null;
        }
        CancellableTask cancellableTask = new CancellableTask() { // from class: com.android.quickstep.TaskThumbnailCache.1
            @Override // com.android.quickstep.util.CancellableTask
            public ThumbnailData getResultOnBg() {
                return ActivityManagerWrapper.getInstance().getTaskThumbnail(taskKey.id, z4);
            }

            @Override // com.android.quickstep.util.CancellableTask
            public void handleResult(ThumbnailData thumbnailData2) {
                TaskThumbnailCache.this.mCache.put(taskKey, thumbnailData2);
                consumer.accept(thumbnailData2);
            }
        };
        this.mBgExecutor.execute(cancellableTask);
        return cancellableTask;
    }
}
