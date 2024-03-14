.class public final synthetic Lcom/android/launcher3/uioverrides/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

.field public final synthetic e:Lcom/android/launcher3/util/SafeCloseable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/b;->d:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/b;->e:Lcom/android/launcher3/util/SafeCloseable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/b;->d:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/b;->e:Lcom/android/launcher3/util/SafeCloseable;

    sget v1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->mDrawForDrag:Z

    return-void
.end method
