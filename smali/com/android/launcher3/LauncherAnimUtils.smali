.class public final Lcom/android/launcher3/LauncherAnimUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRAWABLE_ALPHA:Landroid/util/IntProperty;

.field public static final HINT_TEXT_COLOR:Landroid/util/IntProperty;

.field public static final HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

.field public static final LAYOUT_HEIGHT:Landroid/util/IntProperty;

.field public static final LAYOUT_WIDTH:Landroid/util/IntProperty;

.field public static final ROTATION_DRAWABLE_PERCENT:Landroid/util/FloatProperty;

.field public static final SCALE_PROPERTY:Landroid/util/FloatProperty;

.field public static final TEXT_COLOR:Landroid/util/IntProperty;

.field public static final VIEW_ALPHA:Landroid/util/FloatProperty;

.field public static final VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

.field public static final VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

.field public static final VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

.field public static final WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$1;

    const-string v1, "drawableAlpha"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->DRAWABLE_ALPHA:Landroid/util/IntProperty;

    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$2;

    const-string v1, "scale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const-string v1, "workspace_scale_property"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->WORKSPACE_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    new-instance v0, Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const-string v1, "hotseat_scale_property"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->HOTSEAT_SCALE_PROPERTY_FACTORY:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$1;

    const-string v1, "width"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_WIDTH:Landroid/util/IntProperty;

    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$1;

    const-string v1, "height"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/LauncherAnimUtils$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_HEIGHT:Landroid/util/IntProperty;

    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$1;

    const-string v1, "textColor"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/LauncherAnimUtils$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->TEXT_COLOR:Landroid/util/IntProperty;

    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$1;

    const-string v1, "hintTextColor"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/LauncherAnimUtils$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->HINT_TEXT_COLOR:Landroid/util/IntProperty;

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    instance-of v1, v0, Landroid/util/FloatProperty;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/util/FloatProperty;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$2;

    const-string v1, "translateX"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils$2;-><init>(Ljava/lang/String;I)V

    :goto_0
    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_X:Landroid/util/FloatProperty;

    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    instance-of v1, v0, Landroid/util/FloatProperty;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/util/FloatProperty;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$2;

    const-string v1, "translateY"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/LauncherAnimUtils$2;-><init>(Ljava/lang/String;I)V

    :goto_1
    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    instance-of v1, v0, Landroid/util/FloatProperty;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/util/FloatProperty;

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$2;

    const-string v1, "alpha"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/LauncherAnimUtils$2;-><init>(Ljava/lang/String;I)V

    :goto_2
    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$1;

    const-string v1, "backgroundColor"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_BACKGROUND_COLOR:Landroid/util/IntProperty;

    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$2;

    const-string v1, "drawableRotationPercent"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/LauncherAnimUtils$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/LauncherAnimUtils;->ROTATION_DRAWABLE_PERCENT:Landroid/util/FloatProperty;

    return-void
.end method

.method public static newCancelListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/android/launcher3/LauncherAnimUtils$12;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAnimUtils$12;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
