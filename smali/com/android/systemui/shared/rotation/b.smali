.class public final synthetic Lcom/android/systemui/shared/rotation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/systemui/shared/rotation/RotationButtonController;

.field public final synthetic e:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/b;->d:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iput-object p2, p0, Lcom/android/systemui/shared/rotation/b;->e:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/b;->d:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-object p0, p0, Lcom/android/systemui/shared/rotation/b;->e:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->d(Lcom/android/systemui/shared/rotation/RotationButtonController;Landroid/content/Intent;)V

    return-void
.end method
