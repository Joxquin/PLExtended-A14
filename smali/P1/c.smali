.class public final synthetic LP1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;


# instance fields
.field public final synthetic a:LP1/f;


# direct methods
.method public synthetic constructor <init>(LP1/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP1/c;->a:LP1/f;

    return-void
.end method


# virtual methods
.method public final onScreenOnChanged(Z)V
    .locals 0

    iget-object p0, p0, LP1/c;->a:LP1/f;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, LP1/f;->u:Z

    invoke-virtual {p0}, LP1/f;->d()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method
