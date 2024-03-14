package com.android.quickstep;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.accessibility.AccessibilityManager;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.util.DisplayController;
import com.android.quickstep.util.CancellableTask;
import com.android.quickstep.util.TaskKeyLruCache;
import com.android.quickstep.util.TaskVisualsChangeListener;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.PackageManagerWrapper;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class TaskIconCache implements DisplayController.DisplayInfoChangeListener {
    private final AccessibilityManager mAccessibilityManager;
    private final Executor mBgExecutor;
    private final Context mContext;
    private final TaskKeyLruCache mIconCache;
    private BaseIconFactory mIconFactory;
    private final IconProvider mIconProvider;
    private final SparseArray mDefaultIcons = new SparseArray();
    private BitmapInfo mDefaultIconBase = null;
    public TaskVisualsChangeListener mTaskVisualsChangeListener = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class TaskCacheEntry {
        public String contentDescription;
        public Drawable icon;

        public /* synthetic */ TaskCacheEntry(int i4) {
            this();
        }

        private TaskCacheEntry() {
            this.contentDescription = "";
        }
    }

    public TaskIconCache(Context context, Executor executor, IconProvider iconProvider) {
        this.mContext = context;
        this.mBgExecutor = executor;
        this.mAccessibilityManager = (AccessibilityManager) context.getSystemService(AccessibilityManager.class);
        this.mIconProvider = iconProvider;
        this.mIconCache = new TaskKeyLruCache(context.getResources().getInteger(R.integer.recentsIconCacheSize));
        ((DisplayController) DisplayController.INSTANCE.get(context)).addChangeListener(this);
    }

    private String getBadgedContentDescription(ActivityInfo activityInfo, int i4, ActivityManager.TaskDescription taskDescription) {
        PackageManager packageManager = this.mContext.getPackageManager();
        String trim = taskDescription == null ? null : Utilities.trim(taskDescription.getLabel());
        if (TextUtils.isEmpty(trim)) {
            trim = Utilities.trim(activityInfo.loadLabel(packageManager));
        }
        String trim2 = Utilities.trim(activityInfo.applicationInfo.loadLabel(packageManager));
        String charSequence = i4 != UserHandle.myUserId() ? packageManager.getUserBadgedLabel(trim2, UserHandle.of(i4)).toString() : trim2;
        if (trim2.equals(trim)) {
            return charSequence;
        }
        return charSequence + " " + trim;
    }

    private BitmapInfo getBitmapInfo(Drawable drawable, int i4, int i5, boolean z4) {
        BaseIconFactory iconFactory = getIconFactory();
        try {
            iconFactory.setWrapperBackgroundColor(i5);
            BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
            iconOptions.setUser(UserHandle.of(i4));
            iconOptions.setInstantApp(z4);
            iconOptions.setExtractedColor(0);
            BitmapInfo createBadgedIconBitmap = iconFactory.createBadgedIconBitmap(drawable, iconOptions);
            iconFactory.close();
            return createBadgedIconBitmap;
        } catch (Throwable th) {
            if (iconFactory != null) {
                try {
                    iconFactory.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TaskCacheEntry getCacheEntry(Task task) {
        ActivityInfo activityInfo;
        TaskCacheEntry taskCacheEntry = (TaskCacheEntry) this.mIconCache.getAndInvalidateIfModified(task.key);
        if (taskCacheEntry != null) {
            return taskCacheEntry;
        }
        ActivityManager.TaskDescription taskDescription = task.taskDescription;
        Task.TaskKey taskKey = task.key;
        TaskCacheEntry taskCacheEntry2 = new TaskCacheEntry(0);
        Bitmap icon = getIcon(taskDescription, taskKey.userId);
        if (icon != null) {
            taskCacheEntry2.icon = getBitmapInfo(new BitmapDrawable(this.mContext.getResources(), icon), taskKey.userId, taskDescription.getPrimaryColor(), false).newIcon(0, this.mContext);
            activityInfo = null;
        } else {
            ActivityInfo activityInfo2 = PackageManagerWrapper.getInstance().getActivityInfo(taskKey.getComponent(), taskKey.userId);
            if (activityInfo2 != null) {
                taskCacheEntry2.icon = getBitmapInfo(this.mIconProvider.getIcon(activityInfo2), taskKey.userId, taskDescription.getPrimaryColor(), activityInfo2.applicationInfo.isInstantApp()).newIcon(0, this.mContext);
            } else {
                taskCacheEntry2.icon = getDefaultIcon(taskKey.userId);
            }
            activityInfo = activityInfo2;
        }
        if (activityInfo == null) {
            activityInfo = PackageManagerWrapper.getInstance().getActivityInfo(taskKey.getComponent(), taskKey.userId);
        }
        if (activityInfo != null) {
            taskCacheEntry2.contentDescription = getBadgedContentDescription(activityInfo, task.key.userId, task.taskDescription);
        }
        this.mIconCache.put(task.key, taskCacheEntry2);
        return taskCacheEntry2;
    }

    private Drawable getDefaultIcon(int i4) {
        synchronized (this.mDefaultIcons) {
            if (this.mDefaultIconBase == null) {
                BaseIconFactory iconFactory = getIconFactory();
                this.mDefaultIconBase = iconFactory.makeDefaultIcon();
                iconFactory.close();
            }
            int indexOfKey = this.mDefaultIcons.indexOfKey(i4);
            if (indexOfKey >= 0) {
                return ((BitmapInfo) this.mDefaultIcons.valueAt(indexOfKey)).newIcon(0, this.mContext);
            }
            BaseIconFactory iconFactory2 = getIconFactory();
            BitmapInfo bitmapInfo = this.mDefaultIconBase;
            BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
            iconOptions.setUser(UserHandle.of(i4));
            BitmapInfo withFlags = bitmapInfo.withFlags(iconFactory2.getBitmapFlagOp(iconOptions));
            this.mDefaultIcons.put(i4, withFlags);
            FastBitmapDrawable newIcon = withFlags.newIcon(0, this.mContext);
            iconFactory2.close();
            return newIcon;
        }
    }

    private Bitmap getIcon(ActivityManager.TaskDescription taskDescription, int i4) {
        return taskDescription.getInMemoryIcon() != null ? taskDescription.getInMemoryIcon() : ActivityManager.TaskDescription.loadTaskDescriptionIcon(taskDescription.getIconFilename(), i4);
    }

    private BaseIconFactory getIconFactory() {
        if (this.mIconFactory == null) {
            Context context = this.mContext;
            this.mIconFactory = new BaseIconFactory(context, ((DisplayController) DisplayController.INSTANCE.get(context)).getInfo().getDensityDpi(), this.mContext.getResources().getDimensionPixelSize(R.dimen.task_icon_cache_default_icon_size), false);
        }
        return this.mIconFactory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$invalidateCacheEntries$0(String str, UserHandle userHandle, Task.TaskKey taskKey) {
        return str.equals(taskKey.getPackageName()) && userHandle.getIdentifier() == taskKey.userId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invalidateCacheEntries$1(final String str, final UserHandle userHandle) {
        this.mIconCache.removeAll(new Predicate() { // from class: com.android.quickstep.l1
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$invalidateCacheEntries$0;
                lambda$invalidateCacheEntries$0 = TaskIconCache.lambda$invalidateCacheEntries$0(str, userHandle, (Task.TaskKey) obj);
                return lambda$invalidateCacheEntries$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetFactory() {
        this.mIconFactory = null;
        this.mIconCache.evictAll();
    }

    public void clearCache() {
        this.mBgExecutor.execute(new Runnable() { // from class: com.android.quickstep.k1
            @Override // java.lang.Runnable
            public final void run() {
                TaskIconCache.this.resetFactory();
            }
        });
    }

    public void dispatchIconUpdate(int i4) {
        TaskVisualsChangeListener taskVisualsChangeListener = this.mTaskVisualsChangeListener;
        if (taskVisualsChangeListener != null) {
            taskVisualsChangeListener.onTaskIconChanged(i4);
        }
    }

    public void invalidateCacheEntries(final String str, final UserHandle userHandle) {
        this.mBgExecutor.execute(new Runnable() { // from class: com.android.quickstep.m1
            @Override // java.lang.Runnable
            public final void run() {
                TaskIconCache.this.lambda$invalidateCacheEntries$1(str, userHandle);
            }
        });
    }

    @Override // com.android.launcher3.util.DisplayController.DisplayInfoChangeListener
    public void onDisplayInfoChanged(Context context, DisplayController.Info info, int i4) {
        if ((i4 & 4) != 0) {
            clearCache();
        }
    }

    public void onTaskRemoved(Task.TaskKey taskKey) {
        this.mIconCache.remove(taskKey);
    }

    public void registerTaskVisualsChangeListener(TaskVisualsChangeListener taskVisualsChangeListener) {
        this.mTaskVisualsChangeListener = taskVisualsChangeListener;
    }

    public void removeTaskVisualsChangeListener() {
        this.mTaskVisualsChangeListener = null;
    }

    public CancellableTask updateIconInBackground(final Task task, final Consumer consumer) {
        if (task.icon != null) {
            consumer.accept(task);
            return null;
        }
        CancellableTask cancellableTask = new CancellableTask() { // from class: com.android.quickstep.TaskIconCache.1
            @Override // com.android.quickstep.util.CancellableTask
            public TaskCacheEntry getResultOnBg() {
                return TaskIconCache.this.getCacheEntry(task);
            }

            @Override // com.android.quickstep.util.CancellableTask
            public void handleResult(TaskCacheEntry taskCacheEntry) {
                Task task2 = task;
                task2.icon = taskCacheEntry.icon;
                task2.titleDescription = taskCacheEntry.contentDescription;
                consumer.accept(task2);
                TaskIconCache.this.dispatchIconUpdate(task.key.id);
            }
        };
        this.mBgExecutor.execute(cancellableTask);
        return cancellableTask;
    }
}
