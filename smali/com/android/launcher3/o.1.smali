.class public final synthetic Lcom/android/launcher3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/CheckLongPressHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/CheckLongPressHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o;->d:Lcom/android/launcher3/CheckLongPressHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/o;->d:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-static {p0}, Lcom/android/launcher3/CheckLongPressHelper;->a(Lcom/android/launcher3/CheckLongPressHelper;)V

    return-void
.end method
