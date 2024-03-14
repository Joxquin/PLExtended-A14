package com.android.launcher3.util;

import android.view.View;
import android.view.ViewTreeObserver;
import com.android.launcher3.Launcher;
import com.android.launcher3.Workspace;
import java.util.Objects;
/* loaded from: classes.dex */
public final class ViewOnDrawExecutor implements ViewTreeObserver.OnDrawListener, Runnable, View.OnAttachStateChangeListener {
    private Workspace mAttachedView;
    private boolean mCancelled;
    private boolean mCompleted;
    private boolean mFirstDrawCompleted;
    private boolean mLoadAnimationCompleted;
    private M mOnClearCallback;
    private final RunnableList mTasks;

    public ViewOnDrawExecutor(RunnableList runnableList) {
        this.mTasks = runnableList;
    }

    public final void attachTo(Launcher launcher) {
        Objects.requireNonNull(launcher);
        this.mOnClearCallback = new M(launcher);
        Workspace workspace = launcher.getWorkspace();
        this.mAttachedView = workspace;
        workspace.addOnAttachStateChangeListener(this);
        if (!this.mAttachedView.isAttachedToWindow() || this.mCompleted) {
            return;
        }
        this.mAttachedView.getViewTreeObserver().addOnDrawListener(this);
        this.mAttachedView.getRootView().invalidate();
    }

    public final void cancel() {
        this.mCancelled = true;
        markCompleted();
    }

    public final void markCompleted() {
        if (!this.mCancelled) {
            this.mTasks.executeAllAndDestroy();
        }
        this.mCompleted = true;
        Workspace workspace = this.mAttachedView;
        if (workspace != null) {
            workspace.getViewTreeObserver().removeOnDrawListener(this);
            this.mAttachedView.removeOnAttachStateChangeListener(this);
        }
        M m4 = this.mOnClearCallback;
        if (m4 != null) {
            m4.accept(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        this.mFirstDrawCompleted = true;
        this.mAttachedView.post(this);
    }

    public final void onLoadAnimationCompleted() {
        this.mLoadAnimationCompleted = true;
        Workspace workspace = this.mAttachedView;
        if (workspace != null) {
            workspace.post(this);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        if (this.mCompleted) {
            return;
        }
        this.mAttachedView.getViewTreeObserver().addOnDrawListener(this);
        this.mAttachedView.getRootView().invalidate();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.mLoadAnimationCompleted && this.mFirstDrawCompleted && !this.mCompleted) {
            markCompleted();
        }
    }
}
