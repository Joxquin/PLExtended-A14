.class public final synthetic Lcom/android/launcher3/icons/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/icons/IconCache;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/IconCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/i;->d:Lcom/android/launcher3/icons/IconCache;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/i;->d:Lcom/android/launcher3/icons/IconCache;

    invoke-static {p0}, Lcom/android/launcher3/icons/IconCache;->c(Lcom/android/launcher3/icons/IconCache;)V

    return-void
.end method
