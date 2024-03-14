package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.R$styleable;
import com.android.launcher3.taskbar.KeyboardQuickSwitchController;
import com.android.launcher3.taskbar.KeyboardQuickSwitchViewController;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.util.BorderAnimator;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class KeyboardQuickSwitchTaskView extends ConstraintLayout {

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f5039d = 0;
    private BorderAnimator mBorderAnimator;
    private final int mBorderColor;
    private View mContent;
    private ImageView mIcon1;
    private ImageView mIcon2;
    private ImageView mThumbnailView1;
    private ImageView mThumbnailView2;

    public KeyboardQuickSwitchTaskView(Context context) {
        this(context, null);
    }

    private static void applyIcon(ImageView imageView, Task task) {
        if (imageView == null || task == null) {
            return;
        }
        imageView.setVisibility(0);
        imageView.setImageDrawable(task.icon);
    }

    private void applyThumbnail(final ImageView imageView, Task task, KeyboardQuickSwitchView$$ExternalSyntheticLambda3 keyboardQuickSwitchView$$ExternalSyntheticLambda3) {
        KeyboardQuickSwitchController.ControllerCallbacks controllerCallbacks;
        RecentsModel recentsModel;
        if (imageView == null || task == null) {
            return;
        }
        if (keyboardQuickSwitchView$$ExternalSyntheticLambda3 == null) {
            ThumbnailData thumbnailData = task.thumbnail;
            Bitmap bitmap = thumbnailData == null ? null : thumbnailData.thumbnail;
            imageView.setVisibility(0);
            imageView.setImageBitmap(bitmap);
            return;
        }
        Consumer consumer = new Consumer() { // from class: com.android.launcher3.taskbar.i
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                KeyboardQuickSwitchTaskView.s(KeyboardQuickSwitchTaskView.this, imageView, (ThumbnailData) obj);
            }
        };
        controllerCallbacks = KeyboardQuickSwitchViewController.this.mControllerCallbacks;
        recentsModel = KeyboardQuickSwitchController.this.mModel;
        recentsModel.getThumbnailCache().updateThumbnailInBackground(task, consumer);
    }

    public static /* synthetic */ void r(KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView, Task task, Task task2) {
        applyIcon(keyboardQuickSwitchTaskView.mIcon1, task);
        if (task2 != null) {
            return;
        }
        keyboardQuickSwitchTaskView.setContentDescription(task.titleDescription);
    }

    public static void s(KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView, ImageView imageView, ThumbnailData thumbnailData) {
        keyboardQuickSwitchTaskView.getClass();
        Bitmap bitmap = thumbnailData == null ? null : thumbnailData.thumbnail;
        imageView.setVisibility(0);
        imageView.setImageBitmap(bitmap);
    }

    public static /* synthetic */ void t(KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView, Task task, Task task2) {
        applyIcon(keyboardQuickSwitchTaskView.mIcon2, task);
        keyboardQuickSwitchTaskView.setContentDescription(keyboardQuickSwitchTaskView.getContext().getString(R.string.quick_switch_split_task, task2.titleDescription, task.titleDescription));
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        BorderAnimator borderAnimator = this.mBorderAnimator;
        if (borderAnimator != null) {
            borderAnimator.drawBorder(canvas);
        }
    }

    public final Animator getFocusAnimator(boolean z4) {
        BorderAnimator borderAnimator = this.mBorderAnimator;
        if (borderAnimator == null) {
            return null;
        }
        return borderAnimator.buildAnimator(z4);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.mThumbnailView1 = (ImageView) findViewById(R.id.thumbnail1);
        this.mThumbnailView2 = (ImageView) findViewById(R.id.thumbnail2);
        this.mIcon1 = (ImageView) findViewById(R.id.icon1);
        this.mIcon2 = (ImageView) findViewById(R.id.icon2);
        this.mContent = findViewById(R.id.content);
        Resources resources = ((ViewGroup) this).mContext.getResources();
        this.mBorderAnimator = new BorderAnimator(resources.getDimensionPixelSize(R.dimen.keyboard_quick_switch_task_view_radius), this.mBorderColor, new BorderAnimator.ScalingParams(resources.getDimensionPixelSize(R.dimen.keyboard_quick_switch_border_width), new BorderAnimator.BorderBoundsBuilder() { // from class: com.android.launcher3.taskbar.g
            @Override // com.android.quickstep.util.BorderAnimator.BorderBoundsBuilder
            public final void updateBorderBounds(Rect rect) {
                int i4 = KeyboardQuickSwitchTaskView.f5039d;
                KeyboardQuickSwitchTaskView keyboardQuickSwitchTaskView = KeyboardQuickSwitchTaskView.this;
                rect.set(0, 0, keyboardQuickSwitchTaskView.getWidth(), keyboardQuickSwitchTaskView.getHeight());
            }
        }, this, this.mContent));
    }

    public final void setThumbnails(final Task task, final Task task2, KeyboardQuickSwitchView$$ExternalSyntheticLambda3 keyboardQuickSwitchView$$ExternalSyntheticLambda3, KeyboardQuickSwitchView$$ExternalSyntheticLambda3 keyboardQuickSwitchView$$ExternalSyntheticLambda32) {
        KeyboardQuickSwitchController.ControllerCallbacks controllerCallbacks;
        RecentsModel recentsModel;
        KeyboardQuickSwitchController.ControllerCallbacks controllerCallbacks2;
        RecentsModel recentsModel2;
        applyThumbnail(this.mThumbnailView1, task, keyboardQuickSwitchView$$ExternalSyntheticLambda3);
        applyThumbnail(this.mThumbnailView2, task2, keyboardQuickSwitchView$$ExternalSyntheticLambda3);
        if (keyboardQuickSwitchView$$ExternalSyntheticLambda32 == null) {
            applyIcon(this.mIcon1, task);
            applyIcon(this.mIcon2, task2);
            setContentDescription(task2 == null ? task.titleDescription : getContext().getString(R.string.quick_switch_split_task, task.titleDescription, task2.titleDescription));
            return;
        }
        Consumer consumer = new Consumer(this) { // from class: com.android.launcher3.taskbar.h

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ KeyboardQuickSwitchTaskView f5126b;

            {
                this.f5126b = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r4) {
                    case 0:
                        Task task3 = (Task) obj;
                        KeyboardQuickSwitchTaskView.r(this.f5126b, task, task2);
                        return;
                    default:
                        Task task4 = (Task) obj;
                        KeyboardQuickSwitchTaskView.t(this.f5126b, task, task2);
                        return;
                }
            }
        };
        KeyboardQuickSwitchViewController.ViewCallbacks viewCallbacks = keyboardQuickSwitchView$$ExternalSyntheticLambda32.f5040a;
        controllerCallbacks = KeyboardQuickSwitchViewController.this.mControllerCallbacks;
        recentsModel = KeyboardQuickSwitchController.this.mModel;
        recentsModel.getIconCache().updateIconInBackground(task, consumer);
        if (task2 == null) {
            return;
        }
        Consumer consumer2 = new Consumer(this) { // from class: com.android.launcher3.taskbar.h

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ KeyboardQuickSwitchTaskView f5126b;

            {
                this.f5126b = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r4) {
                    case 0:
                        Task task3 = (Task) obj;
                        KeyboardQuickSwitchTaskView.r(this.f5126b, task2, task);
                        return;
                    default:
                        Task task4 = (Task) obj;
                        KeyboardQuickSwitchTaskView.t(this.f5126b, task2, task);
                        return;
                }
            }
        };
        controllerCallbacks2 = KeyboardQuickSwitchViewController.this.mControllerCallbacks;
        recentsModel2 = KeyboardQuickSwitchController.this.mModel;
        recentsModel2.getIconCache().updateIconInBackground(task2, consumer2);
    }

    public KeyboardQuickSwitchTaskView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KeyboardQuickSwitchTaskView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public KeyboardQuickSwitchTaskView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TaskView, i4, i5);
        setWillNotDraw(false);
        this.mBorderColor = obtainStyledAttributes.getColor(0, -1);
        obtainStyledAttributes.recycle();
    }
}
