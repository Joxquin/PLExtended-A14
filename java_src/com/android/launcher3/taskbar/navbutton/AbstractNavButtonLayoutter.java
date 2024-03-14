package com.android.launcher3.taskbar.navbutton;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.RotateDrawable;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public abstract class AbstractNavButtonLayoutter implements NavButtonLayoutFactory$NavButtonLayoutter {
    private final ImageView backButton;
    private final ViewGroup endContextualContainer;
    private final ImageView homeButton;
    private final LinearLayout navButtonContainer;
    private final ImageView recentsButton;
    private final Resources resources;

    public AbstractNavButtonLayoutter(Resources resources, LinearLayout linearLayout, ViewGroup viewGroup, ViewGroup viewGroup2) {
        this.resources = resources;
        this.navButtonContainer = linearLayout;
        this.endContextualContainer = viewGroup;
        this.homeButton = (ImageView) linearLayout.findViewById(R.id.home);
        this.recentsButton = (ImageView) linearLayout.findViewById(R.id.recent_apps);
        ImageView imageView = (ImageView) linearLayout.findViewById(R.id.back);
        this.backButton = imageView;
        if (imageView != null) {
            RotateDrawable rotateDrawable = new RotateDrawable();
            Context context = imageView.getContext();
            rotateDrawable.setDrawable(context != null ? context.getDrawable(R.drawable.ic_sysbar_back) : null);
            rotateDrawable.setFromDegrees(0.0f);
            rotateDrawable.setToDegrees(Utilities.isRtl(imageView.getResources()) ? 90.0f : -90.0f);
            imageView.setImageDrawable(rotateDrawable);
        }
    }

    public final ImageView getBackButton() {
        return this.backButton;
    }

    public final ViewGroup getEndContextualContainer() {
        return this.endContextualContainer;
    }

    public final ImageView getHomeButton() {
        return this.homeButton;
    }

    public final LinearLayout getNavButtonContainer() {
        return this.navButtonContainer;
    }

    public final ImageView getRecentsButton() {
        return this.recentsButton;
    }

    public final Resources getResources() {
        return this.resources;
    }
}
