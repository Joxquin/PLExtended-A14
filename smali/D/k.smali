.class public final synthetic LD/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LD/m;

.field public final synthetic e:Landroid/graphics/Typeface;


# direct methods
.method public synthetic constructor <init>(LD/m;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD/k;->d:LD/m;

    iput-object p2, p0, LD/k;->e:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LD/k;->d:LD/m;

    iget-object p0, p0, LD/k;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, LD/m;->d(Landroid/graphics/Typeface;)V

    return-void
.end method
