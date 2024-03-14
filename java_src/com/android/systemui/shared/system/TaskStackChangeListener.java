package com.android.systemui.shared.system;

import android.app.ActivityManager;
import android.content.ComponentName;
import com.android.systemui.shared.recents.model.ThumbnailData;
/* loaded from: classes.dex */
public interface TaskStackChangeListener {
    default void onActivityDismissingDockedStack() {
    }

    default void onActivityForcedResizable(String str, int i4, int i5) {
    }

    default void onActivityLaunchOnSecondaryDisplayFailed() {
    }

    default void onActivityLaunchOnSecondaryDisplayRerouted() {
    }

    default void onActivityPinned(String str, int i4, int i5, int i6) {
    }

    default void onActivityRequestedOrientationChanged(int i4, int i5) {
    }

    default void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z4, boolean z5, boolean z6) {
    }

    default void onActivityRotation(int i4) {
    }

    default void onActivityUnpinned() {
    }

    default void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) {
    }

    default void onLockTaskModeChanged(int i4) {
    }

    default void onRecentTaskListFrozenChanged(boolean z4) {
    }

    default void onRecentTaskListUpdated() {
    }

    default void onTaskCreated(int i4, ComponentName componentName) {
    }

    default void onTaskDescriptionChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
    }

    default void onTaskDisplayChanged(int i4, int i5) {
    }

    default void onTaskMovedToFront(int i4) {
    }

    default void onTaskProfileLocked(ActivityManager.RunningTaskInfo runningTaskInfo, int i4) {
    }

    default void onTaskRemoved(int i4) {
    }

    default boolean onTaskSnapshotChanged(int i4, ThumbnailData thumbnailData) {
        return false;
    }

    default void onTaskStackChanged() {
    }

    default void onTaskStackChangedBackground() {
    }

    default void onActivityLaunchOnSecondaryDisplayFailed(ActivityManager.RunningTaskInfo runningTaskInfo) {
        onActivityLaunchOnSecondaryDisplayFailed();
    }

    default void onActivityLaunchOnSecondaryDisplayRerouted(ActivityManager.RunningTaskInfo runningTaskInfo) {
        onActivityLaunchOnSecondaryDisplayRerouted();
    }

    default void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) {
        onTaskMovedToFront(runningTaskInfo.taskId);
    }
}
