.class public final synthetic Lcom/android/systemui/shared/rotation/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/rotation/RotationButtonController$2;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/f;->d:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

    iput p2, p0, Lcom/android/systemui/shared/rotation/f;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/f;->d:Lcom/android/systemui/shared/rotation/RotationButtonController$2;

    iget p0, p0, Lcom/android/systemui/shared/rotation/f;->e:I

    invoke-static {v0, p0}, Lcom/android/systemui/shared/rotation/RotationButtonController$2;->a(Lcom/android/systemui/shared/rotation/RotationButtonController$2;I)V

    return-void
.end method
