.class public final synthetic Lcom/android/launcher3/widget/picker/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

.field public final synthetic e:Landroid/animation/Animator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/picker/c;->d:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    iput-object p2, p0, Lcom/android/launcher3/widget/picker/c;->e:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/c;->d:Lcom/android/launcher3/widget/picker/WidgetsFullSheet;

    iget-object p0, p0, Lcom/android/launcher3/widget/picker/c;->e:Landroid/animation/Animator;

    invoke-static {v0, p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->f(Lcom/android/launcher3/widget/picker/WidgetsFullSheet;Landroid/animation/Animator;)V

    return-void
.end method
