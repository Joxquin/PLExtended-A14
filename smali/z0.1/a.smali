.class public final Lz0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "header"

    const-string v1, "empty_divider"

    const-string v2, "section_header"

    const-string v3, "text_header_row"

    const-string v4, "placeholder"

    const-string v5, "richanswer_placeholder"

    const-string v6, "play_placeholder"

    const-string v7, "educard"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lz0/a;->a:Ljava/util/List;

    return-void
.end method
