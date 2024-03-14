.class public final synthetic Lcom/android/launcher3/taskbar/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/y;->a:Z

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/y;->a:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
