.class public abstract Lcom/android/launcher3/anim/PropertySetter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

.field protected static final NO_OP:Landroid/animation/AnimatorSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/anim/PropertySetter$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/PropertySetter$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/android/launcher3/anim/PropertySetter;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public abstract add(Landroid/animation/Animator;)V
.end method

.method public addEndListener(Ljava/util/function/Consumer;)V
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/c3;

    invoke-virtual {p1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/c3;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public buildAnim()Landroid/animation/AnimatorSet;
    .locals 0

    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public setColor(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 0

    invoke-virtual {p2, p1, p3}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 0

    invoke-virtual {p2, p1, p3}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 0

    invoke-virtual {p2, p1, p3}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x4

    invoke-static {p1, p0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;I)V

    :cond_0
    sget-object p0, Lcom/android/launcher3/anim/PropertySetter;->NO_OP:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public setViewBackgroundColor(Lcom/android/launcher3/views/ScrimView;ILandroid/animation/TimeInterpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/views/ScrimView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
