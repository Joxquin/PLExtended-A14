package com.android.systemui.shared.recents.model;

import B1.a;
import android.app.ActivityManager;
import android.app.TaskInfo;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.ViewDebug;
import com.android.internal.util.ArrayUtils;
import java.io.PrintWriter;
import java.util.Objects;
/* loaded from: classes.dex */
public class Task {
    public static final String TAG = "Task";
    public Rect appBounds;
    @ViewDebug.ExportedProperty(category = "recents")
    public int colorBackground;
    @ViewDebug.ExportedProperty(category = "recents")
    public int colorPrimary;
    public Drawable icon;
    @ViewDebug.ExportedProperty(category = "recents")
    public boolean isDockable;
    @ViewDebug.ExportedProperty(category = "recents")
    public boolean isLocked;
    @ViewDebug.ExportedProperty(deepExport = true, prefix = "key_")
    public TaskKey key;
    public ActivityManager.RecentTaskInfo.PersistedTaskSnapshotData lastSnapshotData;
    public Point positionInParent;
    public ActivityManager.TaskDescription taskDescription;
    public ThumbnailData thumbnail;
    @ViewDebug.ExportedProperty(category = "recents")
    @Deprecated
    public String title;
    @ViewDebug.ExportedProperty(category = "recents")
    public String titleDescription;
    @ViewDebug.ExportedProperty(category = "recents")
    public ComponentName topActivity;

    public Task() {
        this.lastSnapshotData = new ActivityManager.RecentTaskInfo.PersistedTaskSnapshotData();
    }

    public static Task from(TaskKey taskKey, TaskInfo taskInfo, boolean z4) {
        ActivityManager.TaskDescription taskDescription = taskInfo.taskDescription;
        return new Task(taskKey, taskDescription != null ? taskDescription.getPrimaryColor() : 0, taskDescription != null ? taskDescription.getBackgroundColor() : 0, taskInfo.supportsMultiWindow && ArrayUtils.contains(a.f110b, taskInfo.getWindowingMode()) && (taskInfo.getActivityType() == 0 || ArrayUtils.contains(a.f109a, taskInfo.getActivityType())), z4, taskDescription, taskInfo.topActivity);
    }

    public void dump(String str, PrintWriter printWriter) {
        printWriter.print(str);
        printWriter.print(this.key);
        if (!this.isDockable) {
            printWriter.print(" dockable=N");
        }
        if (this.isLocked) {
            printWriter.print(" locked=Y");
        }
        printWriter.print(" ");
        printWriter.print(this.title);
        printWriter.println();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Task) {
            return this.key.equals(((Task) obj).key);
        }
        return false;
    }

    public TaskKey getKey() {
        return this.key;
    }

    public ComponentName getTopComponent() {
        ComponentName componentName = this.topActivity;
        return componentName != null ? componentName : this.key.baseIntent.getComponent();
    }

    public float getVisibleThumbnailRatio(boolean z4) {
        Rect rect;
        ActivityManager.RecentTaskInfo.PersistedTaskSnapshotData persistedTaskSnapshotData = this.lastSnapshotData;
        Point point = persistedTaskSnapshotData.taskSize;
        if (point == null || (rect = persistedTaskSnapshotData.contentInsets) == null) {
            return 0.0f;
        }
        float f4 = point.x;
        float f5 = point.y;
        if (z4) {
            f4 -= rect.left + rect.right;
            f5 -= rect.top + rect.bottom;
        }
        return f4 / f5;
    }

    public void setLastSnapshotData(ActivityManager.RecentTaskInfo recentTaskInfo) {
        this.lastSnapshotData.set(recentTaskInfo.lastSnapshotData);
    }

    public String toString() {
        return "[" + this.key.toString() + "] " + this.title;
    }

    public Task(TaskKey taskKey) {
        this.lastSnapshotData = new ActivityManager.RecentTaskInfo.PersistedTaskSnapshotData();
        this.key = taskKey;
        this.taskDescription = new ActivityManager.TaskDescription();
    }

    public Task(Task task) {
        this(task.key, task.colorPrimary, task.colorBackground, task.isDockable, task.isLocked, task.taskDescription, task.topActivity);
        this.lastSnapshotData.set(task.lastSnapshotData);
        this.positionInParent = task.positionInParent;
        this.appBounds = task.appBounds;
    }

    /* loaded from: classes.dex */
    public class TaskKey implements Parcelable {
        public static final Parcelable.Creator CREATOR = new Parcelable.Creator() { // from class: com.android.systemui.shared.recents.model.Task.TaskKey.1
            @Override // android.os.Parcelable.Creator
            public TaskKey createFromParcel(Parcel parcel) {
                return TaskKey.readFromParcel(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public TaskKey[] newArray(int i4) {
                return new TaskKey[i4];
            }
        };
        @ViewDebug.ExportedProperty(category = "recents")
        public final Intent baseIntent;
        @ViewDebug.ExportedProperty(category = "recents")
        public final int displayId;
        @ViewDebug.ExportedProperty(category = "recents")
        public final int id;
        @ViewDebug.ExportedProperty(category = "recents")
        public long lastActiveTime;
        private int mHashCode;
        public final ComponentName sourceComponent;
        @ViewDebug.ExportedProperty(category = "recents")
        public final int userId;
        @ViewDebug.ExportedProperty(category = "recents")
        public int windowingMode;

        public TaskKey(TaskInfo taskInfo) {
            ComponentName componentName = taskInfo.origActivity;
            componentName = componentName == null ? taskInfo.realActivity : componentName;
            this.id = taskInfo.taskId;
            this.windowingMode = taskInfo.configuration.windowConfiguration.getWindowingMode();
            this.baseIntent = taskInfo.baseIntent;
            this.sourceComponent = componentName;
            this.userId = taskInfo.userId;
            this.lastActiveTime = taskInfo.lastActiveTime;
            this.displayId = taskInfo.displayId;
            updateHashCode();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static TaskKey readFromParcel(Parcel parcel) {
            return new TaskKey(parcel.readInt(), parcel.readInt(), (Intent) parcel.readTypedObject(Intent.CREATOR), (ComponentName) parcel.readTypedObject(ComponentName.CREATOR), parcel.readInt(), parcel.readLong(), parcel.readInt());
        }

        private void updateHashCode() {
            this.mHashCode = Objects.hash(Integer.valueOf(this.id), Integer.valueOf(this.windowingMode), Integer.valueOf(this.userId));
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (obj instanceof TaskKey) {
                TaskKey taskKey = (TaskKey) obj;
                return this.id == taskKey.id && this.windowingMode == taskKey.windowingMode && this.userId == taskKey.userId;
            }
            return false;
        }

        public ComponentName getComponent() {
            return this.baseIntent.getComponent();
        }

        public int getId() {
            return this.id;
        }

        public String getPackageName() {
            return this.baseIntent.getComponent() != null ? this.baseIntent.getComponent().getPackageName() : this.baseIntent.getPackage();
        }

        public int hashCode() {
            return this.mHashCode;
        }

        public void setWindowingMode(int i4) {
            this.windowingMode = i4;
            updateHashCode();
        }

        public String toString() {
            return "id=" + this.id + " windowingMode=" + this.windowingMode + " user=" + this.userId + " lastActiveTime=" + this.lastActiveTime;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i4) {
            parcel.writeInt(this.id);
            parcel.writeInt(this.windowingMode);
            parcel.writeTypedObject(this.baseIntent, i4);
            parcel.writeInt(this.userId);
            parcel.writeLong(this.lastActiveTime);
            parcel.writeInt(this.displayId);
            parcel.writeTypedObject(this.sourceComponent, i4);
        }

        public TaskKey(int i4, int i5, Intent intent, ComponentName componentName, int i6, long j4) {
            this.id = i4;
            this.windowingMode = i5;
            this.baseIntent = intent;
            this.sourceComponent = componentName;
            this.userId = i6;
            this.lastActiveTime = j4;
            this.displayId = 0;
            updateHashCode();
        }

        public TaskKey(int i4, int i5, Intent intent, ComponentName componentName, int i6, long j4, int i7) {
            this.id = i4;
            this.windowingMode = i5;
            this.baseIntent = intent;
            this.sourceComponent = componentName;
            this.userId = i6;
            this.lastActiveTime = j4;
            this.displayId = i7;
            updateHashCode();
        }
    }

    @Deprecated
    public Task(TaskKey taskKey, int i4, int i5, boolean z4, boolean z5, ActivityManager.TaskDescription taskDescription, ComponentName componentName) {
        this.lastSnapshotData = new ActivityManager.RecentTaskInfo.PersistedTaskSnapshotData();
        this.key = taskKey;
        this.colorPrimary = i4;
        this.colorBackground = i5;
        this.taskDescription = taskDescription;
        this.isDockable = z4;
        this.isLocked = z5;
        this.topActivity = componentName;
    }
}
