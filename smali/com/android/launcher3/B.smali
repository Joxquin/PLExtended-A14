.class public final synthetic Lcom/android/launcher3/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/DisplayController$Info;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/DisplayController$Info;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/B;->a:Lcom/android/launcher3/util/DisplayController$Info;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/B;->a:Lcom/android/launcher3/util/DisplayController$Info;

    check-cast p1, Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
